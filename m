Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C830F69A807
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 10:22:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229928AbjBQJWT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 04:22:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbjBQJWS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 04:22:18 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F201E60A51
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 01:22:16 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id h14so2142048edz.10
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 01:22:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7LQsmO8BJ1on7K8O2a2MHWuCjPwW4wmR8+WhYFU/VUQ=;
        b=XOl3+vffPd/tr8VTgKyaurW98MVfUTdskc41q1EjjW71xvLiIYgKWXQkNyYZ+Y67PO
         2iJKSuTzoFWi85dqTZWcoFn0iPYHhaViU5+nnOIyHbnUlJJ26fo+SI+v7BjsHRbQbg/a
         UnGkezss5oQXW41AQ/grewhxfhvc42oIKSt4Qw7jN/vNv4P4NkJLwaoHUeLB9DqHozpU
         3aT6jRcgK7PQlaHoI8ygzg6JKEv2dbOIqaKK0YdxRHa7xXdoT4nVTiObhyOytOGpQN31
         kaxoAXBqxOUV3hcCC+FOiXTK9AN8YxvsbF7hBkREnPd1mdzp1Zysm/v5zpiBVMHQEnzS
         JCFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7LQsmO8BJ1on7K8O2a2MHWuCjPwW4wmR8+WhYFU/VUQ=;
        b=Y+2TH1ObyvoSKYvegoysvWVv8XCfhJIdnDTS5XpLt9oe1rr837GE5hVCgu0QPFG/ff
         p94khEnNdQcGYQxvqsMRXXJ30M3IoI0TVCZkmPRQuysipR1QRB+1KGqVSWNhbwNhzHrk
         4oo7VeCiddC4rVXG8PafvAQxVZIliLP+b/TVhriNbftzxZ8q55LpWCBpUrgUhxGjPoZ/
         R2FKCPZRUHcblMFEGgTYhnbGXVwmfnV/z0r4Q6GT/lp3goub/iByk4RrI9KhXJzNCV7j
         +YtheS0n2hD2B2trhJWGwX+e64Q9ZlnWQQrwPq85IegpDuXRLr7CWZQR+FubcHNGwVOQ
         3Slw==
X-Gm-Message-State: AO0yUKUrr9T8fmsAcb8boYxqIFW61liWYq/2Fqw3T4lCxsoRTxejqhX1
        ENf/j7Ms1EsJdKuaCEQZgSAd4Q==
X-Google-Smtp-Source: AK7set/pxhKkcmJ7uQ2CkOz1aneV7sr4U6gYAbzUn9nsEPVXQhfN1+InHaCiguvDh+QE9kvztTD+7Q==
X-Received: by 2002:a17:906:16d3:b0:8b1:23cf:13dc with SMTP id t19-20020a17090616d300b008b123cf13dcmr9984759ejd.16.1676625735479;
        Fri, 17 Feb 2023 01:22:15 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id oq15-20020a170906cc8f00b008b165948da6sm1742629ejb.101.2023.02.17.01.22.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 01:22:15 -0800 (PST)
Message-ID: <7535d488-37fc-1e67-6a14-b658beb000e3@linaro.org>
Date:   Fri, 17 Feb 2023 10:22:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v5 05/10] dt-bindings: soc: fsl: cpm_qe: Add QMC
 controller
Content-Language: en-US
To:     Herve Codina <herve.codina@bootlin.com>,
        Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nicholas Piggin <npiggin@gmail.com>,
        Qiang Zhao <qiang.zhao@nxp.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>,
        Fabio Estevam <festevam@gmail.com>,
        Nicolin Chen <nicoleotsuka@gmail.com>
Cc:     linuxppc-dev@lists.ozlabs.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20230216134226.1692107-1-herve.codina@bootlin.com>
 <20230216134226.1692107-6-herve.codina@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230216134226.1692107-6-herve.codina@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 14:42, Herve Codina wrote:
> Add support for the QMC (QUICC Multichannel Controller)
> available in some PowerQUICC SoC such as MPC885 or MPC866.
> 
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  .../soc/fsl/cpm_qe/fsl,cpm1-scc-qmc.yaml      | 172 ++++++++++++++++++
>  1 file changed, 172 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/fsl/cpm_qe/fsl,cpm1-scc-qmc.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

