Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DBFC762F3C
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 10:08:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231134AbjGZII0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 04:08:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233131AbjGZIHw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 04:07:52 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5A494685
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:00:45 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-99bccc9ec02so16276066b.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 01:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690358444; x=1690963244;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gBi4DXkLkJk2Dg/EkHSHB5+DOP2xfu33PAuJukEQqto=;
        b=O0IeSms8+KrpFhWEWODiOcZPWu7XE/w7h3JOelgJ1u+V9ps8nlSF+lr+InbxFPs6XS
         5nvks7NbBBTFP2kfFdwkLuFRlzvMd5WpBYuvWxZs2FPikTsRGX8CgpzMGrq3SDbW7/g/
         cb+kDdUrgtqK7QEaDferyxoNRuu6OLW4vYujM9WN1+AXTaRlt0rsTDFZ4cTizKHLpNbg
         4HMoyv718YERB/ONenjnlfdCd643YpVN60h2L5dy7AEfdiVG9B/NQhfXXeQe3dhMQXGU
         MnlajdbDA63LmK4GWKRGcGxHSTIuhETxZ2M/Olf28mMWyJuJzV7koTwGJAWHtWb71u2i
         9+hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690358444; x=1690963244;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gBi4DXkLkJk2Dg/EkHSHB5+DOP2xfu33PAuJukEQqto=;
        b=jkWnYIoESvmqvQYGqUGfRH3o8I69pfsHaFou8IOvw/1KEhTChX9XPeUNYOsPEwIHd3
         xzxK0lHknM825C+qN8G30Tj0G9jGVBeEh1Hg5ORTnEGXtfKTqd7IL1Uf2DAxjB82rxIA
         QBAQ8IRvxqHqEJCucMwq9IZeut4FA24DBscpC2c2luLj44l1yvdjqZOPfWLiOcSPi4Ii
         TeqYX8quGIJXZm67VCLCI9zK9KBheE8lqFmkh/wufeDn50CzOPzSQohFLnrb8o5yuLJc
         19iTr+VxcDsoDbkW6XIjJyAgtyK8Z1Tg1LkJ3ZbkDiEATArZj+L9XmNjhkIzDMc/3JwL
         Al7w==
X-Gm-Message-State: ABy/qLYSWeV2ik48YRaR8aU8B7CmrN8bByRpqz9FXNwsrwiHzpkSEXHS
        pjnPVFifaY5NeRrpudSXR2hfcw==
X-Google-Smtp-Source: APBJJlEy6J8EY+FQdZGq40ZDRrTuULzJoDlHK38119KLstNODFT2nRCtqILtEmSUP2tSfvA4Ge7tJg==
X-Received: by 2002:a17:906:7795:b0:991:c9da:70da with SMTP id s21-20020a170906779500b00991c9da70damr1212478ejm.61.1690358444448;
        Wed, 26 Jul 2023 01:00:44 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id si1-20020a170906cec100b00992d70f8078sm9302120ejb.106.2023.07.26.01.00.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 01:00:44 -0700 (PDT)
Message-ID: <b030ce33-afd1-7b11-db38-7d48f81690d6@linaro.org>
Date:   Wed, 26 Jul 2023 10:00:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 23/32] ASoC: dt-bindings: Add Q6USB backend bindings
Content-Language: en-US
To:     Wesley Cheng <quic_wcheng@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, mathias.nyman@intel.com,
        gregkh@linuxfoundation.org, lgirdwood@gmail.com,
        broonie@kernel.org, perex@perex.cz, tiwai@suse.com,
        srinivas.kandagatla@linaro.org, bgoswami@quicinc.com,
        Thinh.Nguyen@synopsys.com
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-usb@vger.kernel.org, alsa-devel@alsa-project.org,
        quic_jackp@quicinc.com, pierre-louis.bossart@linux.intel.com,
        oneukum@suse.com, albertccwang@google.com, o-takashi@sakamocchi.jp
References: <20230725023416.11205-1-quic_wcheng@quicinc.com>
 <20230725023416.11205-24-quic_wcheng@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230725023416.11205-24-quic_wcheng@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/07/2023 04:34, Wesley Cheng wrote:
> Add a dt-binding to describe the definition of enabling the Q6 USB backend
> device for audio offloading.  The node carries information, which is passed
> along to the QC USB SND class driver counterpart.  These parameters will be
> utilized during QMI stream enable requests.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>

A nit, subject: drop second/last, redundant "bindings". The
"dt-bindings" prefix is already stating that these are bindings.

> ---
>  .../bindings/sound/qcom,q6usb-dais.yaml       | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/qcom,q6usb-dais.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/qcom,q6usb-dais.yaml b/Documentation/devicetree/bindings/sound/qcom,q6usb-dais.yaml
> new file mode 100644
> index 000000000000..77bc9b4c3c90
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/qcom,q6usb-dais.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/qcom,q6usb-dais.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm ASoC DPCM USB backend DAI
> +
> +maintainers:
> +  - Wesley Cheng <quic_wcheng@quicinc.com>
> +
> +description:
> +  The USB port is a supported AFE path on the Q6 DSP.  This ASoC DPCM
> +  backend DAI driver will communicate the required settings to the QC USB SND
> +  class driver for properly enabling the audio stream.  Parameters defined
> +  under this node will carry settings, which will be passed along during
> +  the QMI stream enable request.

You still refer to the drivers. I said this should be rephrased and you
confirmed that "driver" here means Linux. If you are adding bindings for
Linux drivers, then it won't work. Bindings are for hardware.


Also, missing $ref to dai-common.yaml


> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,q6usb
> +


Best regards,
Krzysztof

