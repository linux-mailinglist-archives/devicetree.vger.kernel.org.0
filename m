Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5FF6114D1B9
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2020 21:08:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726259AbgA2UIN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jan 2020 15:08:13 -0500
Received: from mail-pf1-f195.google.com ([209.85.210.195]:36849 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726632AbgA2UIN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jan 2020 15:08:13 -0500
Received: by mail-pf1-f195.google.com with SMTP id 185so218490pfv.3
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2020 12:08:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pNbYTl5D7tyyPadQOvtvEgIuY7oo9N5/84ZV6aPiL+A=;
        b=CCXGcuD7tYKTGjAOzvqSlDukmhV+suyVJ8/fo6Ofb2snrXaxvbPe50iXKIEn4DoXs1
         SYXrZmgfnc1pzPOh3c/hA1vdTE90X4nqGQ3iqYOAdvXdyIY0mJgjXdMMN2mzJ6RD4swD
         OFOzy5Z45DcYxSXQcniIQD+vgzNd4uRqvU6nY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pNbYTl5D7tyyPadQOvtvEgIuY7oo9N5/84ZV6aPiL+A=;
        b=gLQXjIAMlsJfkEzVpUkdMmUcT/4h3/OoNAWFyiJgY8epJGZMqaSzH/ngtOKuOxpYqc
         Y8o1nZCqYMDxHOG7F5jud1/FBS+Zc2KPWQTk/1fcGZb9puefLGk3FcmXTPMCEEDgdxDm
         3AouvUG4UgdI0xxe7W5Z8xO8Yw19BQyurL7402TBDa2iWcbWXkHrv8JPwQUkqXqrkrB3
         +7VjfAoz6Hg4khq0y2LUzoxiKnfgnbPO3S9OlpVEacs+jEIvFyzmF/1lUqkwSkxKf7tb
         JyEx32k5+s3aW5S3Mv0G57IrYC9PfqLfHzVePhGtw8FIgxwPsSLrYN+G9SDAyGwAxs+e
         3TxQ==
X-Gm-Message-State: APjAAAVwE1et9v376mQ6pVG/0kPuGBtfETYfMoGDk/lbqxvvJBCIkjii
        PAXY7K+BmXbRu49Dq2LjD0MxBg==
X-Google-Smtp-Source: APXvYqwNqzfWZk6lufqk30dH9ILXdft34mJBC++saewCuU8HaAWZPqlMhBVOnbVwcO2EyAR+4k9I8g==
X-Received: by 2002:a62:1548:: with SMTP id 69mr1273817pfv.239.1580328492369;
        Wed, 29 Jan 2020 12:08:12 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
        by smtp.gmail.com with ESMTPSA id o184sm3588727pgo.62.2020.01.29.12.08.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 12:08:11 -0800 (PST)
Date:   Wed, 29 Jan 2020 12:08:10 -0800
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
        devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/8] dt-bindings: phy: qcom,qusb2: Convert QUSB2 phy
 bindings to yaml
Message-ID: <20200129200810.GB71044@google.com>
References: <1580305919-30946-1-git-send-email-sanm@codeaurora.org>
 <1580305919-30946-2-git-send-email-sanm@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1580305919-30946-2-git-send-email-sanm@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sandeep,

On Wed, Jan 29, 2020 at 07:21:52PM +0530, Sandeep Maheswaram wrote:
> Convert QUSB2 phy  bindings to DT schema format using json-schema.
> 
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---
>  .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    | 142 +++++++++++++++++++++
>  .../devicetree/bindings/phy/qcom-qusb2-phy.txt     |  68 ----------
>  2 files changed, 142 insertions(+), 68 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/qcom-qusb2-phy.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> new file mode 100644
> index 0000000..90b3cc6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> @@ -0,0 +1,142 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/qcom,qusb2-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Qualcomm QUSB2 phy controller
> +
> +maintainers:
> +  - Manu Gautam <mgautam@codeaurora.org>
> +
> +description:
> +  QUSB2 controller supports LS/FS/HS usb connectivity on Qualcomm chipsets.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,msm8996-qusb2-phy
> +      - qcom,msm8998-qusb2-phy
> +      - qcom,sdm845-qusb2-phy

If you wanted to maintain the comments from the .txt file you could add
them after the compatible string (e.g.
Documentation/devicetree/bindings/pwm/pwm-samsung.yaml)

> +  reg:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    minItems: 2

       maxItems: 3 ?

> +    items:
> +      - description: phy config clock
> +      - description: 19.2 MHz ref clk
> +      - description: phy interface clock (Optional)
> +
> +  clock-names:
> +    minItems: 2

       maxItems: 3 ?

> +    items:
> +      - const: cfg_ahb
> +      - const: ref
> +      - const: iface
> +
> +  vdda-pll-supply:
> +     description:
> +       Phandle to 1.8V regulator supply to PHY refclk pll block.
> +
> +  vdda-phy-dpdm-supply:
> +     description:
> +       Phandle to 3.1V regulator supply to Dp/Dm port signals.
> +
> +  resets:
> +    maxItems: 1

       description:
         Phandle to reset to phy block.

> +
> +  nvmem-cells:
> +    maxItems: 1
> +    description:
> +        Phandle to nvmem cell that contains 'HS Tx trim'
> +        tuning parameter value for qusb2 phy.
> +
> +  qcom,tcsr-syscon:
> +    description:
> +        Phandle to TCSR syscon register region.
> +    $ref: /schemas/types.yaml#/definitions/cell
> +
> +  qcom,imp-res-offset-value:
> +    description:
> +        It is a 6 bit value that specifies offset to be
> +        added to PHY refgen RESCODE via IMP_CTRL1 register. It is a PHY
> +        tuning parameter that may vary for different boards of same SOC.
> +        This property is applicable to only QUSB2 v2 PHY.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +        maximum: 63
> +        default: 0
> +
> +  qcom,hstx-trim-value:
> +    description:
> +        It is a 4 bit value that specifies tuning for HSTX
> +        output current.
> +        Possible range is - 15mA to 24mA (stepsize of 600 uA).
> +        See dt-bindings/phy/phy-qcom-qusb2.h for applicable values.
> +        This property is applicable to only QUSB2 v2 PHY.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +        maximum: 15
> +        default: 3
> +
> +  qcom,preemphasis-level:
> +    description:
> +        It is a 2 bit value that specifies pre-emphasis level.
> +        Possible range is 0 to 15% (stepsize of 5%).
> +        See dt-bindings/phy/phy-qcom-qusb2.h for applicable values.
> +        This property is applicable to only QUSB2 v2 PHY.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +        maximum: 3
> +        default: 2
> +
> +  qcom,preemphasis-width:
> +    description:
> +        It is a 1 bit value that specifies how long the HSTX
> +        pre-emphasis (specified using qcom,preemphasis-level) must be in
> +        effect. Duration could be half-bit of full-bit.
> +        See dt-bindings/phy/phy-qcom-qusb2.h for applicable values.
> +        This property is applicable to only QUSB2 v2 PHY.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +        maximum: 1
> +        default: 0

I think you could put the properties that are only applicable for QUSB2
v2 PHY into a block like this and remove the 'This property is
applicable to only QUSB2 v2 PHY.' comment from the property description:

if:
  properties:
    compatible:
      contains:
        const: qcom,sdm845-qusb2-phy
then:
  qcom,imp-res-offset-value:
    ...


Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
