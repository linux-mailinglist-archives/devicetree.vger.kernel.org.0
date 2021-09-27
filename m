Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DCA041A3A7
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 01:14:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238145AbhI0XPe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 19:15:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238124AbhI0XPd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 19:15:33 -0400
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 835DCC061740
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 16:13:55 -0700 (PDT)
Received: by mail-oo1-xc29.google.com with SMTP id h11-20020a4aa74b000000b002a933d156cbso6576447oom.4
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 16:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bunfPpWd3kzWvXqRScHWkoQzp2nTKJKGN8BnN6cETlw=;
        b=pxSsANALO+B5f4jNUXRjDrMwUHfvi9MOcssWvZ2poDWBGa89NYPXViHiUSlCTuV0kn
         FIDiCZhvWDEGnaYkAZtXv9CpufxN6tjabtKS4vM3WQic22D0a/2O3isAjVZgV7BCBlJS
         OvrqtxXElY5S9x8ckKSSI4czl4Z7C2V/WHBM2JFRrKVTd24jjDIN9QJYudxbjcCuLUky
         fftmw+2JkWlZJ4uCdZsu5ObWnUkGwwTLiyet66rO4RHUidcWEdFjSxZipu9lR8NhDON4
         FAp1ZlHrx/1IusCcVZ1FXNvaaihZAsYKPpmWGr8tqk19+EwQ+rrLEncnvcGRo723TkNh
         l/KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bunfPpWd3kzWvXqRScHWkoQzp2nTKJKGN8BnN6cETlw=;
        b=ri8rZDlq8mD1iQW4FhbAeTQHW0dI/pcKyibhqlqXrqiIMN2Z6S8caSwsJU9HQtBmwD
         R7XmeLI6hLcsubDwrxz4AD+C2SMO/qiPxbakI9/PewrCDZmbQqu5sXzAC66PoQn+vy9P
         cjopJZ6wISZ5RuPPJGO+ElzD2kBNo8UtVrmZkJrGfL+nLGCE7OqEqrC7ZoWxIhwUFfLO
         sCWezsR8ukG/is1USiMC3BGZ//2BHgWwfOh9+5oq2qE+WCYbsyW3mF4x+alMiG0PzAMR
         HsxKck0YO3nZy+HubjRrj1/rPPoBXlZ5Q8IA8T4Q1/rFwHXhy6RB4wOdJYdbUQkQSVDg
         BNaw==
X-Gm-Message-State: AOAM533zyLZNSK1pNTa537abmd8VY+XkpCzxa4CNIsHtbMkCmNbnAZXd
        +mO0a6+g8OfoHeWoLWqZpDXcYg==
X-Google-Smtp-Source: ABdhPJw/B+aEJ9bidUMgGjg/KIz7YnCivEhHXww4c5fKzblqaaS7U8oyWyaY3lO0XfNU2vcKsCSSAA==
X-Received: by 2002:a4a:ca12:: with SMTP id w18mr2165740ooq.96.1632784434895;
        Mon, 27 Sep 2021 16:13:54 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id p21sm4162268oip.28.2021.09.27.16.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 16:13:54 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     robh+dt@kernel.org, mka@chromium.org, will@kernel.org,
        Sibi Sankar <sibis@codeaurora.org>, swboyd@chromium.org,
        saiprakash.ranjan@codeaurora.org
Cc:     evgreen@chromium.org, linux-remoteproc@vger.kernel.org,
        robin.murphy@arm.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, p.zabel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        agross@kernel.org, joro@8bytes.org, dianders@chromium.org,
        ohad@wizery.com, mathieu.poirier@linaro.org
Subject: Re: (subset) [PATCH v5 01/10] dt-bindings: remoteproc: qcom: pas: Add SC7280 MPSS support
Date:   Mon, 27 Sep 2021 18:13:49 -0500
Message-Id: <163278440375.1524647.1015553568924080250.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1631886935-14691-2-git-send-email-sibis@codeaurora.org>
References: <1631886935-14691-1-git-send-email-sibis@codeaurora.org> <1631886935-14691-2-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 17 Sep 2021 19:25:26 +0530, Sibi Sankar wrote:
> Add MPSS PAS support for SC7280 SoCs.
> 
> 

Applied, thanks!

[01/10] dt-bindings: remoteproc: qcom: pas: Add SC7280 MPSS support
        commit: 6c62a1eb101c040056cfe03c6bfc3c24c6b3a023

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
