Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E665CDAEF2
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 16:00:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437370AbfJQOAj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 10:00:39 -0400
Received: from mail-yw1-f74.google.com ([209.85.161.74]:42288 "EHLO
        mail-yw1-f74.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437275AbfJQOAj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 10:00:39 -0400
Received: by mail-yw1-f74.google.com with SMTP id o14so1808548ywa.9
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 07:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=sPUInOHOyJISga0nsIoDkcE9uERJbjlKtvSm1L4EC1Q=;
        b=n2JSe8UN+vMIN/vWiExN9l7uHbbCr7dpVdWQyOuT2oa/8fykg8jdwDsCluR0L7suFg
         w8aJM5nlg+fXLbJASbTz6B1as9lv8bQOQQGopbnC7xes8xulfoCio3vqOVQs3RVF8rdd
         PpXZfA2AdLcXG5fAiOfttvMZ9ZlOAkvhGORQdHuu+SJ4aYCqWkEy+K+n7Tx0QTmlcVmP
         hGDzDl32S9586nuyAGTkdZqpa0NA/HqbtiYIpNYUWD6E0UyAPRVcnXT9L/UgugPFx6Hm
         0k+ZA1nYzXNAOL+G9QdSEcj/UiBAtddYi1PezjIVCttmNidZNaeGCch9bnab9x9XdS8f
         cE/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=sPUInOHOyJISga0nsIoDkcE9uERJbjlKtvSm1L4EC1Q=;
        b=mZtxUxsKPjTv9mqATHZh0ws5zQsctR1uGQvHf3d2gHDDvAd5IJ5oDZC2hE7H72KDAe
         uqroX4c+boMiKQIqb7lFSEvBzZhUdxX/5fIcuvxW2gUlynN4yOWFPh7DxgD/2oh9A1ev
         IGq5hYyUel4uyDob5bK5ehLi4ORMM+QwHS62qYfCz0LgCLi5a4DDhpRtF6Xlsp+Ll722
         +c2K4Nfs3AzjD9S+7ESA/8JPSNmM2nthUcLFB6IF7H3kGDS/u6vZTbfua8mjnh+idCy1
         8pBFlWuw/qlkrkc6K0xRPrMdTW2h2vS5fagTuzl3QzcFRT0J1ukRroYGBcCf4G0WgPQG
         GP4Q==
X-Gm-Message-State: APjAAAWsVH9ZIMod2GMfrO3zWQ5PRt+G7BuPmhxvt5n1nSyJeaibspUX
        urKxj9MFkV/8UNF/trKAabicHEkk/YRT
X-Google-Smtp-Source: APXvYqxanDSZD8jVdo6n8A5IheppZHSTAOpiP67QqhT4uOuLCvuXcuyC/c3gwqOjYPKo6dsyL53ai01imaLl
X-Received: by 2002:a81:4888:: with SMTP id v130mr2737177ywa.42.1571320838316;
 Thu, 17 Oct 2019 07:00:38 -0700 (PDT)
Date:   Thu, 17 Oct 2019 22:00:06 +0800
In-Reply-To: <20191017213539.00-tzungbi@google.com>
Message-Id: <20191017213539.01.I374c311eaca0d47944a37b07acbe48fdb74f734d@changeid>
Mime-Version: 1.0
References: <20191017213539.00-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v4 01/10] platform/chrome: cros_ec: remove unused EC feature
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com,
        Benson Leung <bleung@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove unused EC_FEATURE_AUDIO_CODEC.

Acked-by: Benson Leung <bleung@chromium.org>
Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 include/linux/platform_data/cros_ec_commands.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/linux/platform_data/cros_ec_commands.h b/include/linux/platform_data/cros_ec_commands.h
index 98415686cbfa..43b8f7dae4cc 100644
--- a/include/linux/platform_data/cros_ec_commands.h
+++ b/include/linux/platform_data/cros_ec_commands.h
@@ -1277,8 +1277,6 @@ enum ec_feature_code {
 	 * MOTIONSENSE_CMD_TABLET_MODE_LID_ANGLE.
 	 */
 	EC_FEATURE_REFINED_TABLET_MODE_HYSTERESIS = 37,
-	/* EC supports audio codec. */
-	EC_FEATURE_AUDIO_CODEC = 38,
 	/* The MCU is a System Companion Processor (SCP). */
 	EC_FEATURE_SCP = 39,
 	/* The MCU is an Integrated Sensor Hub */
-- 
2.23.0.700.g56cf767bdb-goog

