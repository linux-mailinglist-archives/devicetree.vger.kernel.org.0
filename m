Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1DA6D4765BD
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 23:28:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231443AbhLOW2L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 17:28:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231464AbhLOW16 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 17:27:58 -0500
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com [IPv6:2607:f8b0:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED9DBC06179C
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:27:57 -0800 (PST)
Received: by mail-oi1-x231.google.com with SMTP id u74so33674614oie.8
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 14:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dIWHsocWhNzHpMIBX1OQ+sZEosNoFwmP0CG+wQ9sIW8=;
        b=a7tXULw/Y0Ks7AVUJX+VepzbeZG9pbW0ucTLKjAiRKJ9pOtGgwRyIZrYaOwaWBqKel
         CIJz0I7bzFdUGrnDUNoui/KTByhB+UAhw60QmXQ9ACs4CZ3JSpuOTSo4W77I6wO34AuM
         Id8mQ2dfn5vcWvQPKzSMANzXyUdbe8/uRyVFrGlIEfX0PjEFjr2Li5BXzdtkja77oC39
         E8i77I65sBcU68d984IL+PH8YwepLipxaKPYBDcExjbFURuOdaGCJ2nHRHg1yiNgrWrC
         9Gw6vN2bWNFZIj7YDS7CwNin3uXRnhd7OY7WRbixzjGVc4r7UPqdHrZciM4toBSzzhBu
         laLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dIWHsocWhNzHpMIBX1OQ+sZEosNoFwmP0CG+wQ9sIW8=;
        b=OIS2ooXwGrMuRf8VEfTHWie/Mh6K5hcpES/jv9xjAmOc/ZDvtRZwKkhNETv/1dfKOu
         o5zXYzi5KQwY+R0h2/sWEpF4pCAsdmboDVpREaAgioLh6X6eR7TUWqPu4ylQME1PxUPr
         dRzLhmBXNJVZgnFgqJ/v5uy1aUwX/jty3OZ8EbzWPDvEqOklKwVTymyAKeb/yrzut5N/
         3TxAVPRbKvZeKk/IrNHwSVO1B2/vJtzOZIKGVav2LKE2UIZTywGrd/0A+g5VnyrRXWFl
         kST4hvlXXOvK5LbBJYvGma8a84MExtLRv1rQOW5zSTrthxeP71W2D+/P+dDdMCCBfkFJ
         N6rQ==
X-Gm-Message-State: AOAM532Nh8CIKyEBQguH1JW9qlMzZ00DrA0p0KdGd1gX1uiEHHK2HXDa
        ygjwgZJcMztUqUc3mhljA2fsEg==
X-Google-Smtp-Source: ABdhPJzaotb8BvwvYTRxvwt71utR6gzPfqmBXdd1mswAxbskGys7pe68pNKcSsoIAjm/Mjql+sJoDQ==
X-Received: by 2002:aca:1b15:: with SMTP id b21mr1833979oib.64.1639607277330;
        Wed, 15 Dec 2021 14:27:57 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t14sm700500oth.81.2021.12.15.14.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 14:27:56 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     phone-devel@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc:     Pavel Dubrova <pashadubrova@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Stephen Boyd <sboyd@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jami Kettunen <jami.kettunen@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht,
        Martin Botka <martin.botka@somainline.org>,
        Andy Gross <agross@kernel.org>
Subject: Re: [PATCH v6 0/2] Global Clock Controller driver for MSM8976/56
Date:   Wed, 15 Dec 2021 16:27:29 -0600
Message-Id: <163960723735.3062250.6885330646115264163.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211208091036.132334-1-marijn.suijten@somainline.org>
References: <20211208091036.132334-1-marijn.suijten@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 8 Dec 2021 10:10:34 +0100, Marijn Suijten wrote:
> This is the Global Clock Controller (GCC) driver for MSM8956, MSM8976
> and APQ variants and it has been tested on two Sony phones featuring the
> Qualcomm MSM8956 SoC.
> 
> In addition to GCC this driver is also responsible for providing MDSS
> and GFX3D clocks which reside in the same register space.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: clk: qcom: Document MSM8976 Global Clock Controller
      commit: 13feb2093984625dbece6f1657867c84d45b76de
[2/2] clk: qcom: Add MSM8976/56 Global Clock Controller (GCC) driver
      commit: b577c7e6a63f4dd3b55ccc5c828175995beae66b

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
