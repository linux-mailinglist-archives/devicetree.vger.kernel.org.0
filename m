Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 879AF1D58E6
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2020 20:18:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726292AbgEOSSw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 May 2020 14:18:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726206AbgEOSSu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 May 2020 14:18:50 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58176C05BD09
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 11:18:49 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id m7so1231619plt.5
        for <devicetree@vger.kernel.org>; Fri, 15 May 2020 11:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TN3YbGjKwRG67TqmEq9wsKQ3di2IccwQYISEuCeVfaI=;
        b=lCUZU8JzuIeqhj0l8RuP7U/pV24MCM4ud6HKpCKMEOeiYssLhUsEpG4+dyAM0g6spd
         TOqChzw7Qf9sa5xVwQhBS5lduF9xaPQEUUnOX2aOysz+TmaT3gEWiLM212QehIVbBMBf
         sCDC2z+XD5g3DPGS9MMJI267vRsY3ptkUsVUc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TN3YbGjKwRG67TqmEq9wsKQ3di2IccwQYISEuCeVfaI=;
        b=Bsg/CZxZKQY+r5TFXwWwUXGuLumnfu4S4cL7kK767uLxC7LF2G1NBK34nSJfAux7mL
         GaAmUbYVBJgS55N6U2OXRq382J0GAeVndAAa6PouS41Caog6P/UtXqghPRJX9DD5bhtg
         yPBysETm5A6ZbOwdnejb9/lVcW6zjub1mkPuGBULUxzhEl6Bk4ERHhvzEx1jiLvwkn0I
         S4PAfNV5FdG41XCvSvur4SD0KC7JawIWzUx0NbUM/FvZXxjPJeFOIafyGSTn2c0pPAl3
         nO9XYM60iflVEgsKeMy2htEhP3tK6CMWrbETmfvhAjBfdMKmE3bSUg0+5k/o+Z5V9XgW
         S+3w==
X-Gm-Message-State: AOAM533bUO9PlIanf6rnpzf7TSzwGTcgNLe0vGl20Rd5lIMNTM1Wvm1P
        70Z4unwkLMznW/DCEvFo0Vc8xdTnAIE=
X-Google-Smtp-Source: ABdhPJxVQbnVs9wTVS58Flc5yZPT+eshV0777sCvNliJblh1IgUtje9kQZDz8+JYzQVYlhVn7cIT4w==
X-Received: by 2002:a17:90a:1da6:: with SMTP id v35mr3371709pjv.44.1589566728948;
        Fri, 15 May 2020 11:18:48 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
        by smtp.gmail.com with ESMTPSA id l11sm2032464pjj.33.2020.05.15.11.18.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 11:18:48 -0700 (PDT)
Date:   Fri, 15 May 2020 11:18:47 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Sandeep Maheswaram <sanm@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Manu Gautam <mgautam@codeaurora.org>
Subject: Re: [PATCH v7 1/4] dt-bindings: phy: qcom,qmp: Convert QMP PHY
 bindings to yaml
Message-ID: <20200515181847.GY4525@google.com>
References: <1589510358-3865-1-git-send-email-sanm@codeaurora.org>
 <1589510358-3865-2-git-send-email-sanm@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1589510358-3865-2-git-send-email-sanm@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 15, 2020 at 08:09:15AM +0530, Sandeep Maheswaram wrote:
> Convert QMP PHY bindings to DT schema format using json-schema.
> 
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>

This is essentially the same as v5, for which got a 'Reviewed-by' tag
from Rob:

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 18a8985e54d5..dcdb014d6d4d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -30,6 +30,7 @@ properties:
       - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
       - qcom,sm8150-qmp-ufs-phy
+      - qcom,sm8250-qmp-ufs-phy
 
   reg:
     minItems: 1
@@ -217,6 +218,7 @@ allOf:
               - qcom,msm8998-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
               - qcom,sm8150-qmp-ufs-phy
+              - qcom,sm8250-qmp-ufs-phy
     then:
       properties:
         clocks:


I think it would have been ok to add Rob's 'Reviewed-by' tag and save
him the time to look at this again.
