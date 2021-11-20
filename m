Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8893C458100
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 00:55:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237561AbhKTX6p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Nov 2021 18:58:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237546AbhKTX6p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Nov 2021 18:58:45 -0500
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C294FC061574
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:41 -0800 (PST)
Received: by mail-ot1-x331.google.com with SMTP id v15-20020a9d604f000000b0056cdb373b82so22717430otj.7
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=310NDScFW6koVVwnBBR/SZYRsmuPmyb4NVfHlHwUxd8=;
        b=WUFGV+Ga1egmhENUuveeeIPobNHlUV/ZDNfDRANAWWF57pVzgqwH7k5gg2vw+L0UpG
         1dhlB3AnB32bQk8YIBb4xkA8xd1kCkCQwqHAyBxNMzDBVqkgBt77crtdV0rJkx7981dY
         TDdYwuj0aHxmQK9+clIjFAhrKx5hoyjO522T6kaplT2dTMgJ53d7pf3gQ6JJe4lqr52l
         XeLwCd/O99F0H88UtJ3LZlKQYsotDaF8/9xRWVpY/tbzAczHgOsEJoMJ8pUeHk7wV/06
         R45kK9K9RbIKvM4urj1JIM3FPx3oecEwoEJBRbiz/VWDs2IG+C4VDprBIis3aNotvKI5
         1rOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=310NDScFW6koVVwnBBR/SZYRsmuPmyb4NVfHlHwUxd8=;
        b=FHheiIwAt8xLldWlOEoQzVVjo5f8Of7wksKIJ5EHhhO04lgslUl+Rnb9aJ9YfTjlw/
         B2Ca5pIm115mH1BPgJSUEEfcdOM7LC+f9SmAtmA2lFdZB3NRQM6BRv1ZPqySpgW1hepe
         hFbFPP/54RGY51CFLBECqSa74G1w2HN85OXSSNETRhV38zvNN78ynw5LfVK3kHCYMyPr
         Q13DAuK8Qttr+YM5e+WlMQLUIvBh7RWaMOzEEoeNjoPsuqXQB5UU7QVzy2bck+6Fj49l
         6EqtBxJn01y28DIzWEUWSP6UG6X9b/HQtznut0m7PwGpdKzNOG9dLbPuMjdRWdwuL28A
         wMJQ==
X-Gm-Message-State: AOAM532OWF2mFe58iZu5BCSssRrnjkMaqNNLr3wB/Jt17N8coY4r/dqg
        kyBePVqqrAJXHcun0DxhPw2VlQ==
X-Google-Smtp-Source: ABdhPJyBwN8rpmgu8hWSQd+Fo404/brFni65IVk5afvk51wbMqUfAs37TFtDKAnNHrmrLk7odfN1bw==
X-Received: by 2002:a05:6830:2a8f:: with SMTP id s15mr14615463otu.33.1637452541081;
        Sat, 20 Nov 2021 15:55:41 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id o26sm828474otj.14.2021.11.20.15.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 15:55:40 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dang Huynh <danct12@riseup.net>
Cc:     linux-arm-msm@vger.kernel.org,
        Caleb Connolly <caleb@connolly.tech>,
        Konrad Dybcio <konradybcio@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Alexey Min <alexey.min@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Martin Botka <martin.botka@somainline.org>
Subject: Re: (subset) [PATCH v4 0/8] Improve support for Xiaomi Redmi Note 7
Date:   Sat, 20 Nov 2021 17:55:17 -0600
Message-Id: <163745250542.1078332.9553619559826505747.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211120214227.779742-1-danct12@riseup.net>
References: <20211120214227.779742-1-danct12@riseup.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 21 Nov 2021 04:42:19 +0700, Dang Huynh wrote:
> This series expand the Redmi Note 7 device port to support:
>  + Regulators
>  + Volume keys
>  + eMMC and SD card slot
>  + Framebuffer display
>  + USB
> 
> [...]

Applied, thanks!

[1/8] arm64: dts: qcom: sdm630: Assign numbers to eMMC and SD
      commit: b139425115b801e56fe2d6dbcd2e798be87e2e06
[2/8] arm64: dts: qcom: sdm630-pm660: Move RESIN to pm660 dtsi
      commit: 9f6cbe37a72fc9dafe8f560e557c93209cc100e7
[3/8] arm64: dts: qcom: sdm660-xiaomi-lavender: Add RPM and fixed regulators
      commit: 262a8ad19cdfd8e177d32bfbec1691a2069951b1
[4/8] arm64: dts: qcom: sdm660-xiaomi-lavender: Add PWRKEY and RESIN
      commit: 4c420a0449ce0882f225e6e7ae3edc87becd2e85
[6/8] arm64: dts: qcom: sdm660-xiaomi-lavender: Add eMMC and SD
      commit: cf85e9aee210fefd7a85c1ced0a73382e5edcfd0
[7/8] arm64: dts: qcom: sdm660-xiaomi-lavender: Enable Simple Framebuffer
      commit: e631e904e1d89650e3c8facdfb37cfca3491a52d
[8/8] arm64: dts: qcom: sdm660-xiaomi-lavender: Add USB
      commit: e5d3e752b050e03d2046011a3865721a3f200216

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
