Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C527A23160C
	for <lists+devicetree@lfdr.de>; Wed, 29 Jul 2020 01:06:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730336AbgG1XGK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 19:06:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730100AbgG1XFm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jul 2020 19:05:42 -0400
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com [IPv6:2607:f8b0:4864:20::d43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D110EC0619D9
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 16:05:42 -0700 (PDT)
Received: by mail-io1-xd43.google.com with SMTP id s189so15324004iod.2
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 16:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FEp/fFZW3elYu/pkDqjjA8tnLGEpyOC07ATo4jnbF9E=;
        b=KPZo9svrCrF01OxSNs6N5NzjDuZ7FBBnO9f4haOpB217QwgRevg0gt2MOZkS0vRfj6
         iLt4hp6oLWtWdsWvW6kl7sA/4ipmjWov6aUAdtsq71ImxFeVFpZ6ekI26zgTxOoxLguq
         tjDJZlLLElS6D+a8F7xmt6UA7m3DMZtGeKgrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FEp/fFZW3elYu/pkDqjjA8tnLGEpyOC07ATo4jnbF9E=;
        b=R+aPwfXiqS/Kb4VId64BeDkkCyARz0ApC1GfusSe9jb+urmQAqeS5xpQNQ/wwsReDM
         vDGmHXCGoP9Wn2GoJuX8y3nhmy/PF9+OwzKhFi9BT5UsGcNZpkCMLNw5fn94vJ2JolKX
         cJyfjZFy6mJ2Gq93kHaHjRB2nF67sbC94BwralQDnx19iPV40BtPNagVENlfm7yMW5lN
         96VpwmuWbYvuPWHGntRjfkK3vMcNLcoUBnWapCLMmZS4hCHR+UjZmaV8FCCgf/vOH1Av
         /0g63n5G7Qo6rIiIk9fM29sjjM3KwVLUhYO3ANVaegZuGb8A7+MTN7kj2sWhVVwtdMi6
         s7hw==
X-Gm-Message-State: AOAM530RY92JYHJQdnve+3L54knJLqoVCuaysbZEnDsqEKRLzIlItgBT
        lKDRMxXJ1fqUVq5aLWt19xJE8RrL45f6iA==
X-Google-Smtp-Source: ABdhPJzy6X8ljGgWHEzVs0tHQaZilHQa742vHtg+q7KpkQiDkfzP8YGqJgfrfk2qFkCRtq2aSNLGnA==
X-Received: by 2002:a6b:b748:: with SMTP id h69mr21738721iof.47.1595977542085;
        Tue, 28 Jul 2020 16:05:42 -0700 (PDT)
Received: from derch.Home (97-122-92-59.hlrn.qwest.net. [97.122.92.59])
        by smtp.gmail.com with ESMTPSA id w10sm148945ilo.10.2020.07.28.16.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2020 16:05:41 -0700 (PDT)
From:   Daniel Campello <campello@chromium.org>
To:     LKML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Daniel Campello <campello@chromium.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Douglas Anderson <dianders@chromium.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Stephen Boyd <swboyd@chromium.org>, linux-iio@vger.kernel.org
Subject: [PATCH v2 08/14] iio: sx9310: Use regmap_read_poll_timeout() for compensation
Date:   Tue, 28 Jul 2020 17:05:14 -0600
Message-Id: <20200728170317.v2.8.Ia205f0b0363bf663db7704026b5b7036b9748c56@changeid>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
In-Reply-To: <20200728230520.2011240-1-campello@chromium.org>
References: <20200728151258.1222876-1-campello@chromium.org>
 <20200728230520.2011240-1-campello@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Simplify compensation stage by using regmap_read_poll_timeout().

Signed-off-by: Daniel Campello <campello@chromium.org>
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
---

Changes in v2:
 - Fixed dev_err() message

 drivers/iio/proximity/sx9310.c | 25 ++++++++++---------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/iio/proximity/sx9310.c b/drivers/iio/proximity/sx9310.c
index 1f04ab8507ec62..f7f44fd9198499 100644
--- a/drivers/iio/proximity/sx9310.c
+++ b/drivers/iio/proximity/sx9310.c
@@ -797,7 +797,7 @@ static const struct sx9310_reg_default sx9310_default_regs[] = {
 static int sx9310_init_compensation(struct iio_dev *indio_dev)
 {
 	struct sx9310_data *data = iio_priv(indio_dev);
-	int i, ret;
+	int ret;
 	unsigned int val;
 	unsigned int ctrl0;
 
@@ -811,22 +811,17 @@ static int sx9310_init_compensation(struct iio_dev *indio_dev)
 	if (ret < 0)
 		return ret;
 
-	for (i = 100; i >= 0; i--) {
-		msleep(20);
-		ret = regmap_read(data->regmap, SX9310_REG_STAT1, &val);
-		if (ret < 0)
-			goto out;
-		if (!(val & SX9310_COMPSTAT_MASK))
-			break;
-	}
-
-	if (i < 0) {
-		dev_err(&data->client->dev,
-			"initial compensation timed out: 0x%02x", val);
-		ret = -ETIMEDOUT;
+	ret = regmap_read_poll_timeout(data->regmap, SX9310_REG_STAT1, val,
+				       !(val & SX9310_REG_STAT1_COMPSTAT_MASK),
+				       20000, 2000000);
+	if (ret) {
+		if (ret == -ETIMEDOUT)
+			dev_err(&data->client->dev,
+				"initial compensation timed out: 0x%02x\n",
+				val);
+		return ret;
 	}
 
-out:
 	regmap_write(data->regmap, SX9310_REG_PROX_CTRL0, ctrl0);
 	return ret;
 }
-- 
2.28.0.163.g6104cc2f0b6-goog

