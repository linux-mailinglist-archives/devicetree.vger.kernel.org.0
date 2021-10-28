Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79C9643F202
	for <lists+devicetree@lfdr.de>; Thu, 28 Oct 2021 23:44:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231262AbhJ1Vqs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Oct 2021 17:46:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230476AbhJ1Vqr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Oct 2021 17:46:47 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BCD6C061570
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 14:44:20 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 207-20020a1c04d8000000b0033123de3425so273174wme.0
        for <devicetree@vger.kernel.org>; Thu, 28 Oct 2021 14:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0RhGGQzcIi3zcTecjJfp6FKx+6kPry0RwLyaHiAGLj4=;
        b=kJhpxrun7s4s5VH3YwjVxgVdiu1SU/T4TZeE//zn8gIU9i3JqVlVMCTeeBYImtH/C/
         tHBcAZQf5UxCJBweIPjX7bHDGU+7e8TNKExmIkkqT2KbV7nJviZ7V0mcSiLsWwfNwlII
         zIgmrE+WIE1Lq2zmImXz/Lp6ix39qwz+tTZ7uwJVSQEJHBGg2mrB+oZ3bSAGZ460jP99
         LXsHjApyqwqMsQD0kYWv5VlcOTBso9kAXOaJkSVGXVLuJhspSI+dy7yXDMEhH3426hAg
         BKSTmA8cqJ/NxNOXfTmo3bK79wymsCzMKs5p3fPipHCdwO97Q5MSL3xktjVmF7NB9L1e
         d0vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0RhGGQzcIi3zcTecjJfp6FKx+6kPry0RwLyaHiAGLj4=;
        b=CoFIwmmLae8matzjhQM/bs37eeg9ykO5LWG+89gMoruSnuAtFF8Araywj7E9zDrFBW
         8Aan01hz6PraQ+2LObC2PJ2I5WnYPfN2mBucPD2VXmMrjDC6BqTJTqXwBjH4Bdas5fny
         kqM7zSQpQokn4MjCSc5hCqBifBN4CqRTm8KEnHftCwWVI14PfHn3fDrABQz0UGJXmjIJ
         G+p/qlUgaoJMaxNrz5SLEMc3X5GNJ74ArRN9kSZ4QJz4NiLRJSnF230XlXXiS5F7JCB5
         nZesA4fGMxi/BgLD/KRZ7bGgIwBiyDENVGmxeDqce8psrsTTfWEFbP9084Pm2zjfmr71
         RJHw==
X-Gm-Message-State: AOAM5305n8sWybEFVvyOEWGFB2kFYF3xR1Ozy0TsnVl++gxN/52lScWs
        ut2XA46dUyS2Ik8tLYVgShKQNw==
X-Google-Smtp-Source: ABdhPJwcZUOjijr33iqRtUL+GqvZxscUsC6nbCC2XWMrvW0XXkL2STxSDlcdtVSZlJKDXsMfoxDraQ==
X-Received: by 2002:a05:600c:3782:: with SMTP id o2mr15287078wmr.102.1635457457478;
        Thu, 28 Oct 2021 14:44:17 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id g10sm4133306wmq.13.2021.10.28.14.44.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 14:44:17 -0700 (PDT)
Message-ID: <f37340f7-898b-2863-9337-1ee5ab78de4a@linaro.org>
Date:   Thu, 28 Oct 2021 22:46:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.1
Subject: Re: [RESEND PATCH v2 5/7] dt-bindings: usb: Add Qualcomm PMIC TCPM
 YAML schema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        rdunlap@infradead.org, gregkh@linuxfoundation.org,
        bjorn.andersson@linaro.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        wcheng@codeaurora.org
References: <20211028164941.831918-1-bryan.odonoghue@linaro.org>
 <20211028164941.831918-6-bryan.odonoghue@linaro.org>
 <YXsLVwLcvlJSQX88@robh.at.kernel.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <YXsLVwLcvlJSQX88@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/10/2021 21:43, Rob Herring wrote:
> I don't understand these ports. The graph binding should be showing data
> stream connections. It should look something like a block diagram of the
> h/w components.

Two different PHYs which live inside of the pm8150b USB 
typec/pdphy/charger block.

The typec phy and power-delivery phy are not adjacent to each other

typec@1500
charger@1600
pdphy@1700

The typec and pdphy pieces are being brought together into a standard 
Linux TCPM driver.

Rather than have a TCPM device that starts @1500 and spans over the 
charger I've opted to have "virtual" TCPM device that has links to 
typec@1500 and pdphy@1700 via remote-endpoints

That lets the end result dts look like this

pm8150b_tcpm: pmic-tcpm {
     compatible = "qcom,pmic-tcpm";

     status = "disabled";
     ports {

         #address-cells = <1>;
         #size-cells = <0>;

         port@0 {
             reg = <0>;
             pmic_tcpm_typec: endpoint {
                 remote-endpoint = <&pmic_typec>;
             };
         };
         port@1 {
             reg = <1>;
             pmic_tcpm_pdphy: endpoint {
                 remote-endpoint = <&pmic_pdphy>;
             };
         };
     };
};


pm8150b_typec: typec@1500 {
     compatible = "qcom,pm8150b-typec";
     reg = <0x1500>;
     ports {
         #address-cells = <1>;
         #size-cells = <0>;

         port@0 {
             reg = <0>;
             pmic_typec: endpoint {
                 remote-endpoint = <&pmic_tcpm_typec>;
             };
         };
     };
};

pm8150b_pdphy: pdphy@1700 {
     compatible = "qcom,pm8150b-pdphy";
     reg = <0x1700>;
     ports {
         #address-cells = <1>;
         #size-cells = <0>;

         port@0 {
             reg = <0>;
             pmic_pdphy: endpoint {
                 remote-endpoint = <&pmic_tcpm_pdphy>;
             };
         };
     };
};

at a later date we might want to add in the charger but, if we do we 
don't want that to be inside of a Linux TCPM device and I thought it 
would be a mess to have, since we try to keep addresses linear in DTS files


pm8150b_tcpm: pmic-tcpm@1500 {
     compatible = "qcom,pmic-tcpm";


     pm8150b_typec: typec@1500 {
         compatible = "qcom,pm8150b-typec";
         reg = <0x1500>;
         ports {
             #address-cells = <1>;
             #size-cells = <0>;

             port@0 {
                 reg = <0>;
                 pmic_typec: endpoint {
                     remote-endpoint = <&pmic_tcpm_typec>;
                 };
             };
         };
     };

     pm8150b_pdphy: pdphy@1700 {
         compatible = "qcom,pm8150b-pdphy";
         reg = <0x1700>;
         ports {
             #address-cells = <1>;
             #size-cells = <0>;

             port@0 {
                 reg = <0>;
                 pmic_pdphy: endpoint {
                     remote-endpoint = <&pmic_tcpm_pdphy>;
                 };
             };
         };
     };
};

pm8150b_charger: pmic-charger@1600 {
     /* Consume electrons here */
};

---
bod
