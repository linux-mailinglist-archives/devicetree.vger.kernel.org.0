Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B81B7691E25
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 12:26:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231518AbjBJL0H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 06:26:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230130AbjBJL0G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 06:26:06 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 745666C7E8
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 03:26:05 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id m14so4718929wrg.13
        for <devicetree@vger.kernel.org>; Fri, 10 Feb 2023 03:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WRHSFsNOEYBISqhGh46fkzy2/I3EFBvJZ7Wz7NvqRXQ=;
        b=NeJo0PnwsECgbdy5WyE4eGvbwndSnXKWfe+n61S1v7tprEwDEGrNOgmeZnYwEgFJFF
         Zj3Yh+xupgf4Vm+5obFefSe52BnG6FRtcCVDHJoyLqizDKgSFSUrpvEGEMJxa+t3gSmp
         nTLAxBDQOYv+76exd4E/CozZsvxdShWJGBZRaZLS+Va1f6erT1CGTC+/OBjvKv089Tb5
         R5eMQO/Yjg3jtUA8kJcNJg3mByR0R6yI6hCVDo/9vuTZ+hHtJf+exbhmok3XJtzXb8ic
         IblGclnoEru1Oq20FmcYMBp4uXg2C6hwYjwjQ40QXMLE4WfaQApzE14/nX7wWBJP//V6
         VqZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WRHSFsNOEYBISqhGh46fkzy2/I3EFBvJZ7Wz7NvqRXQ=;
        b=wgxq2LkpfJ5uqK6TraWU3G6tZysoCyAI945Flo+j2t5kL6rR0H9TJ3dXLkpQbzHlOa
         OGBuLu39VpCCyc4/w0YoQsLDBfGGEP0lXhWh5nDgixqHKNXofznIFINa2j6TlbBOFa3U
         LKIcl4drQ5AmS/iwtUL8c+n2rHkV+YxJ91WQ0ZtsMX5zYt8uA3txNhSvdyLKxCFkxlBu
         uZAQ8gx4VOCecAmSG7n9Pn1J6WLgMo12aaLcs6lPishylm2bbREE0QniwoueGcoPyGGS
         qLicUJyC24ZelrM5gqxo97AfyhnHVpgtXmp/qtN71qIS3QUzznsGdK34fTsRx6IY7Jlo
         8U+w==
X-Gm-Message-State: AO0yUKVM1EsW0WNGJp27Mk/hDc1b0qEgpEp46XFhWY70f2ut4+qZDLIP
        br1kN5xT8OOtioxGbC2eqBaoeA==
X-Google-Smtp-Source: AK7set8j79x7B9ONqDBzqjQdMb3p8qwjDAXiyqF80JMwAjyuLznTOPi4CX/fXoOm/BNc8+pxppwfPA==
X-Received: by 2002:adf:eb41:0:b0:2c3:ff6c:82e with SMTP id u1-20020adfeb41000000b002c3ff6c082emr8658873wrn.22.1676028364005;
        Fri, 10 Feb 2023 03:26:04 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id g12-20020a5d540c000000b002bff1de8d4bsm3429258wrv.49.2023.02.10.03.26.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Feb 2023 03:26:03 -0800 (PST)
Message-ID: <8c7584b2-60e0-27c8-a7c3-845cf5640d77@linaro.org>
Date:   Fri, 10 Feb 2023 12:26:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v5 3/8] arm64: dts: qcom: sc7280: Add LPASS PIL node
Content-Language: en-US
To:     Stephen Boyd <swboyd@chromium.org>,
        Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        agross@kernel.org, alsa-devel@alsa-project.org,
        andersson@kernel.org, broonie@kernel.org,
        devicetree@vger.kernel.org, dianders@chromium.org,
        judyhsiao@chromium.org, konrad.dybcio@somainline.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, mka@chromium.org,
        quic_mohs@quicinc.com, quic_rjendra@quicinc.com,
        quic_rohkumar@quicinc.com, robh+dt@kernel.org,
        srinivas.kandagatla@linaro.org, vkoul@kernel.org
References: <1675700201-12890-1-git-send-email-quic_srivasam@quicinc.com>
 <1675700201-12890-4-git-send-email-quic_srivasam@quicinc.com>
 <CAE-0n53uReg41RrHrBDaNt+BgaPem_JO-2Wwq8e_g0NeNCvgXg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAE-0n53uReg41RrHrBDaNt+BgaPem_JO-2Wwq8e_g0NeNCvgXg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/02/2023 23:55, Stephen Boyd wrote:
>> +
>> +                       glink-edge {
>> +                               interrupts-extended = <&ipcc IPCC_CLIENT_LPASS
>> +                                                      IPCC_MPROC_SIGNAL_GLINK_QMP
>> +                                                      IRQ_TYPE_EDGE_RISING>;
>> +
>> +                               mboxes = <&ipcc IPCC_CLIENT_LPASS
>> +                                        IPCC_MPROC_SIGNAL_GLINK_QMP>;
>> +
>> +                               label = "lpass";
>> +                               qcom,remote-pid = <2>;
>> +
>> +                               gpr {
> 
> This node name should be apr per the qcom,glink-edge.yaml binding?

No, this is correct. I fixed the glink-edge binding last year.

> 
>> +                                       compatible = "qcom,gpr";
>> +                                       qcom,glink-channels = "adsp_apps";
>> +                                       qcom,domain = <GPR_DOMAIN_ID_ADSP>;
>> +                                       qcom,intents = <512 20>;
>> +                                       #address-cells = <1>;
>> +                                       #size-cells = <0>;
>> +
>> +                                       q6apm: service@1 {
>> +                                               compatible = "qcom,q6apm";
>> +                                               reg = <GPR_APM_MODULE_IID>;
>> +                                               #sound-dai-cells = <0>;
>> +
>> +                                               q6apmdai: dais {
>> +                                                       compatible = "qcom,q6apm-dais";
>> +                                                       iommus = <&apps_smmu 0x1801 0x0>;
>> +                                               };
>> +
>> +                                               q6apmbedai: bedais {
>> +                                                       compatible = "qcom,q6apm-lpass-dais";
>> +                                                       #sound-dai-cells = <1>;
>> +                                               };
>> +                                       };
>> +
>> +                                       q6prm: service@2 {
>> +                                               compatible = "qcom,q6prm";
>> +                                               reg = <GPR_PRM_MODULE_IID>;
>> +
>> +                                               q6prmcc: clock-controller {
>> +                                                       compatible = "qcom,q6prm-lpass-clocks";
> 
> This is clk binding but not a clk driver? I'll look away now.

It is a clock driver which was not put into clk. Maybe because it is
tightly tied to entire QDSP platform.

Best regards,
Krzysztof

