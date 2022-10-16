Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BC7D5FFD93
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 08:29:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229579AbiJPG3n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 02:29:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbiJPG3l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 02:29:41 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC8865FDB
        for <devicetree@vger.kernel.org>; Sat, 15 Oct 2022 23:29:38 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id bp15so13092972lfb.13
        for <devicetree@vger.kernel.org>; Sat, 15 Oct 2022 23:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=US9PhGD0EZ/GSYUx3MvJmwlkBhsahTraQEdhwHbepJY=;
        b=RiOtb6YPC3lun87HVx86jIDNEzI86+QPB2RZuA36gBxrO3xkRw2SFk2/B3Oynd276b
         eHuybi15OR6AXqmNbxVhb2+AdmRHXNv8yq6lcAk1Bv1Q5lzzl6Qe27a9qJcffOQhb6gA
         76N5ZygMOWs3Z4XNY0Zsk+OpgNKOX0ZVnEYXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=US9PhGD0EZ/GSYUx3MvJmwlkBhsahTraQEdhwHbepJY=;
        b=ggnnwx8lWUESOqOMJdPtsohiUijPV++996ay75PgJi/qfMQ51s9ck4L6xzk+AFlX26
         18DziFsqGgbagQqyi6w+7qSRBMABOa9JNsyTmujNeHKPa3ehtzGlVLuDcrmzs/lQ0Vxh
         lv4jrDn2/TBOHhI8lFGUoolS5v1rRra9aPbWykzDE8nEXQNhR4nQEDZvPfsUul/9vama
         8YO3PXvt+Cm61kk1Brq2Qk2yWYAdMdKzGBc1/k5Sj3gGSAIAx9ypd2jhzCajqpPHFnON
         icwbMcl2ZZp240roYk+8EsdipjIG4wlV5bEbjxXawYwepL6weEutE+GrdN6+r1/fl6N2
         j3eA==
X-Gm-Message-State: ACrzQf0a1RpvN8NHJhOiHh+aAgNyUVAKyPw1atCm9D3XyqopA2b7He/v
        cYgY3e5w2zjcQ3ErUCOtSCYgePuxHvM6xaPDKtgPGQ==
X-Google-Smtp-Source: AMsMyM7JEnalmWw8BKPoMCAa9iPJIp+GXB9eMbLBi6x3Zoe2OwvznS0jEYt74uT23Zr3JdRCZPdr092kOj/xNqz+i4Q=
X-Received: by 2002:ac2:50d0:0:b0:4a2:3c86:a11f with SMTP id
 h16-20020ac250d0000000b004a23c86a11fmr1788074lfm.253.1665901777287; Sat, 15
 Oct 2022 23:29:37 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 15 Oct 2022 23:29:36 -0700
MIME-Version: 1.0
In-Reply-To: <1665820441-617-1-git-send-email-quic_srivasam@quicinc.com>
References: <1665820441-617-1-git-send-email-quic_srivasam@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Sat, 15 Oct 2022 23:29:36 -0700
Message-ID: <CAE-0n51ikqx=cETrbqJYLpHKOyVJYFCGhELXo0ZyB7QmFXtZPg@mail.gmail.com>
Subject: Re: [RESEND] dt-bindings: soundwire: Convert text file to yaml format
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, alsa-devel@alsa-project.org,
        andersson@kernel.org, bgoswami@quicinc.com, broonie@kernel.org,
        devicetree@vger.kernel.org, judyhsiao@chromium.org,
        lgirdwood@gmail.com, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, perex@perex.cz,
        quic_plai@quicinc.com, quic_rohkumar@quicinc.com,
        robh+dt@kernel.org, srinivas.kandagatla@linaro.org, tiwai@suse.com,
        vkoul@kernel.org
Cc:     Ratna Deepthi Kudaravalli <quic_rkudarav@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2022-10-15 00:54:01)
> diff --git a/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt b/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
> deleted file mode 100644
> index c85c257..0000000
> --- a/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
> +++ /dev/null
> @@ -1,214 +0,0 @@
[...]
> -- interrupts:
> -       Usage: required
> -       Value type: <prop-encoded-array>
> -       Definition: should specify the SoundWire Controller core and optional
> -                   wake IRQ
> -
> -- interrupt-names:
> -       Usage: Optional
> -       Value type: boolean
> -       Value type: <stringlist>
> -       Definition: should be "core" for core and "wakeup" for wake interrupt.
> -
> -- wakeup-source:

This property is removed?

> -       Usage: Optional
> -       Value type: boolean
> -       Definition: should specify if SoundWire Controller is wake up capable.
> -
[...]
> diff --git a/Documentation/devicetree/bindings/soundwire/qcom,sdw.yaml b/Documentation/devicetree/bindings/soundwire/qcom,sdw.yaml
> new file mode 100644
> index 0000000..bf8f6c1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soundwire/qcom,sdw.yaml
> @@ -0,0 +1,185 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soundwire/qcom,sdw.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm SoundWire Controller
> +
> +maintainers:
[...]
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/clock/qcom,lpassaudiocc-sc7280.h>
> +
> +    soundwire@3210000 {
> +        compatible = "qcom,soundwire-v1.6.0";
> +        reg = <0x03210000 0x2000>;
> +
> +        interrupts = <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&lpass_rx_macro>;
> +        clock-names = "iface";
> +
> +        qcom,din-ports = <0>;
> +        qcom,dout-ports = <5>;
> +
> +        resets = <&lpass_audiocc LPASS_AUDIO_SWR_RX_CGCR>;
> +        reset-names = "swr_audio_cgcr";
> +
> +        qcom,ports-word-length =        /bits/ 8 <0x01 0x07 0x04 0xff 0xff>;
> +        qcom,ports-sinterval-low =      /bits/ 8 <0x03 0x3f 0x1f 0x03 0x03>;
> +        qcom,ports-offset1 =            /bits/ 8 <0x00 0x00 0x0b 0x01 0x01>;
> +        qcom,ports-offset2 =            /bits/ 8 <0x00 0x00 0x0b 0x00 0x00>;
> +        qcom,ports-lane-control =       /bits/ 8 <0x01 0x00 0x00 0x00 0x00>;
> +        qcom,ports-block-pack-mode =    /bits/ 8 <0xff 0x00 0x01 0xff 0xff>;
> +        qcom,ports-hstart =             /bits/ 8 <0xff 0x03 0xff 0xff 0xff>;
> +        qcom,ports-hstop =              /bits/ 8 <0xff 0x06 0xff 0xff 0xff>;
> +        qcom,ports-block-group-count =  /bits/ 8 <0xff 0xff 0xff 0xff 0x00>;
> +
> +        #sound-dai-cells = <1>;
> +        #address-cells = <2>;
> +        #size-cells = <0>;
> +
> +        status = "disabled";

Please omit status from the example.
