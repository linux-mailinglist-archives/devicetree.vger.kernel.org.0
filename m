Return-Path: <devicetree+bounces-828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5887A347C
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 10:40:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AA2EE1C20ADD
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 08:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3635C1C28;
	Sun, 17 Sep 2023 08:40:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEAC15C5
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 08:40:32 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEAC2A1
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 01:40:30 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50309daf971so824152e87.3
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 01:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694940029; x=1695544829; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=phjZMXXQGBT1PWKlmZw5Yn4FYGfgtcbWgls+p3VRN5o=;
        b=GVIGoun+TmUqLpe/6klQ+UJEfcF9srklRV7qTAQD0NkMfvL7u3cRbOOn5mGeMbwRvY
         hmVga+mvypBDSAAA7BmUk5xQMakiNgA8gxLGHp1HpD6wZIOhkGXoooTORBpCdt3rIS8d
         bZ45Lv/XM40n4VpDyUp1pPLXGhAqfof+KIt+pCRf+V9crU8C+Wl5IXiUkbuK5YGIWJwr
         8cbCiftZm4DkMG1ICVw9WoyuQDdiua8vPaJfvISNO3VQW3ye5exccQUQ9IrQrWk/isvq
         6Qg1uSiw0S4iLpmWq6waxFf+izf6lahXfbnnA/2/+xsuEhtBli29M247Bjn83CxQ0DCP
         YHeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694940029; x=1695544829;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=phjZMXXQGBT1PWKlmZw5Yn4FYGfgtcbWgls+p3VRN5o=;
        b=q1PIOG/Pt0Ask1KEFdgJmSUKOxIFGz88+/+NkijyN1zgDXHeKdXYLJsgE7jCywfB65
         z6EQCKBaTrc6j1qCX3CFuvW45cNnO+toJptaLjCw0vn8WvprVLFa2QJuUPwdRHbx8RvJ
         2ypWep+0IFokt3AhxyIVjwsWc4AMDhgTBm1zyCSXcTZIWALpEhSPbaac5Vwn0kz6qHTs
         EyR7NMKeK6sgPdvdZM86UJKnVLcTFO9EzrbxBKd2WBihzfD+T4hY4TVMrkjhiYdiaQHs
         6JX2Cu76vDd7cOhUkEZvU7d+oPK8p1IuwyoH6CNcSuKTpQFon40aJFSrmsedlEQr1nVD
         78fg==
X-Gm-Message-State: AOJu0Yzb7MoSuFFodUfrq9z364gYw7qtRuzXPUXyi2nmryZhUVtdq35i
	amfJ20YyHblIjYxHJzEoU2Vv4NQgPJy2nI5qPa9oiQ==
X-Google-Smtp-Source: AGHT+IHULyHVP8rD2JUEnXkVjO27WjRQFHCS39K6ywTsHYw9pdTJMzrhLzXgX8xQsnAIeu0EKLEUEg==
X-Received: by 2002:a05:6512:39cc:b0:4fe:8661:7696 with SMTP id k12-20020a05651239cc00b004fe86617696mr6054507lfu.45.1694940028959;
        Sun, 17 Sep 2023 01:40:28 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id l2-20020aa7c3c2000000b005257f90c976sm4381179edr.3.2023.09.17.01.40.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Sep 2023 01:40:28 -0700 (PDT)
Message-ID: <2ec056f3-e8a8-c5f3-b132-4b9d2beb616e@linaro.org>
Date: Sun, 17 Sep 2023 10:40:27 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] dt-bindings: Add Google Widevine initialization
 parameters
Content-Language: en-US
To: Yi Chou <yich@chromium.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org
Cc: devicetree@vger.kernel.org, devicetree-spec@vger.kernel.org,
 yich@google.com, jens.wiklander@linaro.org, chenyian@google.com,
 jkardatzke@google.com, jwerner@chromium.org, sjg@chromium.org
References: <20230908101539.2622864-1-yich@google.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230908101539.2622864-1-yich@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 08/09/2023 12:15, Yi Chou wrote:
> The necessary fields to initialize the widevine related functions in
> OP-TEE.
> 
> Signed-off-by: Yi Chou <yich@google.com>
> Reviewed-by: Simon Glass <sjg@chromium.org>
> ---
>  .../bindings/options/google,widevine.yaml     | 124 ++++++++++++++++++
>  1 file changed, 124 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/options/google,widevine.yaml
> 
> diff --git a/Documentation/devicetree/bindings/options/google,widevine.yaml b/Documentation/devicetree/bindings/options/google,widevine.yaml
> new file mode 100644
> index 0000000000000..bf2b834cb1454
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/options/google,widevine.yaml

There is no such hardware as "options". What is this supposed to be for?
firmware?

> @@ -0,0 +1,124 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/options/google,widevine.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Google Widevine initialization parameters.

This is a title, drop full stop.

> +
> +maintainers:
> +  - Jeffrey Kardatzke <jkardatzke@chromium.org>
> +  - Yi Chou <yich@chromium.org>
> +
> +description:
> +  The necessary fields to initialize the widevine related functions in
> +  OP-TEE. This node does not represent a real device, but serves as a
> +  place for passing data between firmware and OP-TEE.
> +  The public fields (e.g. tpm-auth-public-key & root-of-trust-cert) can
> +  be ignored because it's safe to pass the public information with the
> +  other methods(e.g. userland OP-TEE plugins).

Then why isn't this a property of optee node?

> +
> +properties:
> +  compatible:
> +    const: google,widevine

From the description I have no clue what is "widevine". The more
surprising is to see it as "not hardware" but having its node and
compatible, like it was a hardware node.

> +
> +  hardware-unique-key:
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    description: |
> +      The hardware-unique key of the Widevine OP-TEE. It will be used
> +      to derive the secure storage key. The length should be 32 bytes.
> +      For more information, please reference:
> +      https://optee.readthedocs.io/en/latest/architecture/porting_guidelines.html#hardware-unique-key

Why would you store it in DT? This is world readable... or you mean this
is some seed?

> +
> +  tpm-auth-public-key:
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    description: |
> +      The TPM auth public key. Used to communicate the TPM from OP-TEE.
> +      The format of data should be TPM2B_PUBLIC.
> +      For more information, please reference the 12.2.5 section:
> +      https://trustedcomputinggroup.org/wp-content/uploads/TCG_TPM2_r1p59_Part2_Structures_pub.pdf
> +
> +  root-of-trust:
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    description: |
> +      The Widevine root of trust secret. Used to sign the widevine
> +      request in OP-TEE. The length should be 32 bytes. The value
> +      is an ECC NIST P-256 scalar.
> +      For more information, please reference the G.1.2 section:
> +      https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-186.pdf
> +
> +  root-of-trust-cert:
> +    $ref: /schemas/types.yaml#/definitions/uint8-array
> +    description: |
> +      The X.509 certificate of the Widevine root of trust on this
> +      device. Used to provision the device status with the Widevine
> +      server in OP-TEE.
> +      For more information, please reference:
> +      https://www.itu.int/rec/T-REC-X.509
> +
> +required:
> +  - compatible
> +  - hardware-unique-key
> +  - root-of-trust
> +
> +additionalProperties: false
> +
> +examples:
> +  - |+

Why + ?

> +    options {

There is no such node as "options".


Best regards,
Krzysztof


