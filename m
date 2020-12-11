Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0A692D6C76
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 01:29:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394102AbgLKAXw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 19:23:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394077AbgLKAXb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 19:23:31 -0500
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com [IPv6:2607:f8b0:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64C54C0613D3
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 16:22:51 -0800 (PST)
Received: by mail-ot1-x343.google.com with SMTP id f16so6707915otl.11
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 16:22:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=vQ7QSFYNLCLOEOnLv/9TkXlgVCAm2zuGmJOBn9tuZDY=;
        b=xQc71Lckt2wiiCW2pDmmwcuxJ6aWxMjsATWKuGXfBAmfMizx8S85unzP4EulEfysRO
         6xUZ9LGnNu2Ovj7YFLYS79951kARhv6/mXpCcihuiZr2lEs7769hLLhDXelJqbWAWcFQ
         Dwu/fCKQ8BzV0DJ+ZVST5/j3WWnhbun3OIgUEM+J+TND0mpD1zFrVW52XGJVJgr7212k
         s1PbBIJ9lgacRNI0EwDtnc2fmLxKowIXW9WazlcsCHkUZec/Pe2Jag6ueQewP0UHJpCJ
         c6zbCAe+tecdco4iOaEwuq1T0XePF4tyScPCjPt2hzu2imgDoDRxVj/EtZxQvmI+5IpP
         NjZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vQ7QSFYNLCLOEOnLv/9TkXlgVCAm2zuGmJOBn9tuZDY=;
        b=lKLw2ib2b7Hkc8CbXwTv1VnWYNQOKuSKLZ5ZarSJYo3rXK6sobg+tw/IkusCbDiC5n
         LrEYQLU+1q6Fj2EwmvaS7sFA8ifjIyW6RdjpLXadzPAQrGTrESj870E1EhKaX7b/eSE0
         E9SoFnvGWLXCSX+keZvKrc9Oj340NfV1qH2RRRKYVcmN8YYnz5LVY/wLAw9VYru9+6xW
         6esXzEMFU5DDqttKKSJMwoXjdvcTQIa4+PA59HFfKbWpJObZ9n9UlNVJR5wezRs1ZEN0
         JOZ6bMKIB+rTG1daiW7vsBqs3Zof3k7dyYbKVg8lNRP18nIl4Fl44nVc9jaLy0Tivc5P
         BbJQ==
X-Gm-Message-State: AOAM533DYJoX51SqyRMJxpsHE2hoet4JqjZ2VJ9kQIkorrWXEFdNfi/y
        h0dVAGMuE2YuJKn/RtDv1sk1vA==
X-Google-Smtp-Source: ABdhPJycBxD0BPkclaW9jdzct3iZFmqc+y58ENNAGbLlaI/0tWYGHPRWwvekMCWWXiJveCxO+53LPg==
X-Received: by 2002:a9d:5c04:: with SMTP id o4mr7745492otk.372.1607646170529;
        Thu, 10 Dec 2020 16:22:50 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id g2sm1361025ooh.39.2020.12.10.16.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 16:22:49 -0800 (PST)
Date:   Thu, 10 Dec 2020 18:22:48 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: soc: qcom: convert qcom,smem bindings to
 yaml
Message-ID: <X9K72IwTGIIUIqT3@builder.lan>
References: <20201211001057.3041604-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201211001057.3041604-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 10 Dec 18:10 CST 2020, Dmitry Baryshkov wrote:

> Convert soc/qcom/qcom,smem.txt bindings to YAML format.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  .../bindings/soc/qcom/qcom,smem.txt           | 57 ---------------
>  .../bindings/soc/qcom/qcom,smem.yaml          | 73 +++++++++++++++++++
>  2 files changed, 73 insertions(+), 57 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,smem.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,smem.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,smem.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,smem.txt
> deleted file mode 100644
> index 9326cdf6e1b1..000000000000
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,smem.txt
> +++ /dev/null
> @@ -1,57 +0,0 @@
> -Qualcomm Shared Memory Manager binding
> -
> -This binding describes the Qualcomm Shared Memory Manager, used to share data
> -between various subsystems and OSes in Qualcomm platforms.
> -
> -- compatible:
> -	Usage: required
> -	Value type: <stringlist>
> -	Definition: must be:
> -		    "qcom,smem"
> -
> -- memory-region:
> -	Usage: required
> -	Value type: <prop-encoded-array>
> -	Definition: handle to memory reservation for main SMEM memory region.
> -
> -- qcom,rpm-msg-ram:
> -	Usage: required
> -	Value type: <prop-encoded-array>
> -	Definition: handle to RPM message memory resource
> -
> -- hwlocks:
> -	Usage: required
> -	Value type: <prop-encoded-array>
> -	Definition: reference to a hwspinlock used to protect allocations from
> -		    the shared memory
> -
> -= EXAMPLE
> -The following example shows the SMEM setup for MSM8974, with a main SMEM region
> -at 0xfa00000 and the RPM message ram at 0xfc428000:
> -
> -	reserved-memory {
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -		ranges;
> -
> -		smem_region: smem@fa00000 {
> -			reg = <0xfa00000 0x200000>;
> -			no-map;
> -		};
> -	};
> -
> -	smem@fa00000 {
> -		compatible = "qcom,smem";
> -
> -		memory-region = <&smem_region>;
> -		qcom,rpm-msg-ram = <&rpm_msg_ram>;
> -
> -		hwlocks = <&tcsr_mutex 3>;
> -	};
> -
> -	soc {
> -		rpm_msg_ram: memory@fc428000 {
> -			compatible = "qcom,rpm-msg-ram";
> -			reg = <0xfc428000 0x4000>;
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,smem.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,smem.yaml
> new file mode 100644
> index 000000000000..832bf54239c8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,smem.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/qcom/qcom,smem.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Qualcomm Shared Memory Manager binding
> +
> +maintainers:
> +  - Andy Gross <agross@kernel.org>
> +  - Bjorn Andersson <bjorn.andersson@linaro.org>
> +
> +description: |
> +  This binding describes the Qualcomm Shared Memory Manager, used to share data
> +  between various subsystems and OSes in Qualcomm platforms.
> +
> +properties:
> +  compatible:
> +    const: "qcom-smem"
> +
> +  memory-region:
> +    maxItems: 1
> +    description: handle to memory reservation for main SMEM memory region.
> +
> +  hwlocks:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: reference to a hwspinlock used to protect allocations from the shared memory
> +
> +  qcom,rpm-msg-ram:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: handle to RPM message memory resource
> +
> +required:
> +  - compatible
> +  - memory-region
> +  - hwlocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    reserved-memory {
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges;
> +
> +        smem_region: smem@fa00000 {
> +            reg = <0xfa00000 0x200000>;
> +            no-map;
> +        };
> +    };
> +
> +    smem {
> +        compatible = "qcom,smem";
> +
> +        memory-region = <&smem_region>;
> +        qcom,rpm-msg-ram = <&rpm_msg_ram>;
> +
> +        hwlocks = <&tcsr_mutex 3>;
> +    };
> +
> +    soc {
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges;
> +
> +        rpm_msg_ram: sram@fc428000 {
> +            compatible = "qcom,rpm-msg-ram";
> +            reg = <0xfc428000 0x4000>;
> +        };
> +    };
> +
> +...
> -- 
> 2.29.2
> 
