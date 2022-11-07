Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 007EB61F621
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 15:34:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232528AbiKGOec (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 09:34:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232413AbiKGOeO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 09:34:14 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A93081D30C
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 06:33:52 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id b3so17024032lfv.2
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 06:33:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kUuozjWJK2/rL8jydSa75kSlVHyBIRHKnWnX8IibZdI=;
        b=a63VNHxyH1PYuH/fCGaI2yxhpNerLg9xaWbyXCB34s3cWtMhA3XaC65eeLTpnjtqDg
         1UDeRith8fE1SKEY+KNPDRkMIgTndYqbL5+A9lg8cFeniC1KX4xxYJQH7iPrwbybte4a
         xqpAjv1l/vUM7pWC9rkI7FDHeJN8qZTp7ZDILMmtlXeRZZWotv5yauWnbuwPERyAPuzZ
         R9+iAqPwC96xt9t/5AfbR93js5XFn5zgZo8Y6sreUtw0/T25i4vAw63D5rKLaTaPgF00
         ePTH+2qxVHTJYYGkeENi9f0sHDY41wFB1pbypS5ek6RvGYzlQm2kSrJMYR0F8rYx4M6k
         od9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kUuozjWJK2/rL8jydSa75kSlVHyBIRHKnWnX8IibZdI=;
        b=Tp/6lMSdlm7SkYiGICEmfu0Ui6RmfdteHXnhj33sR8rNnRTryxk6xYhZsejqnsHyGi
         OTDpatG5GU3w+BmeSBdFnkFe4eKOeK3HLRiqkb6F5TiOZLXMEQ6zcnBmJJseoyIg5xQG
         kBM1zfDd1yIi8wehgJ8U/Pn582jSSFg24C0r5qtv/MeuDiA6GZ7avhKSCcyw4egxmsY0
         Dz2XkW0yAApL1gWlot784yyEB0JaA5Zx6NAQqkiNwF8VeCpJt2kGrFaZAi3zOF3h9WT8
         htFAGMAynk+Qh0dkKSmBH/RJ+jbENMBt+kb8EhTS1qgE+GncTtAv6I/QEE6xSX2v6P2u
         z/dg==
X-Gm-Message-State: ACrzQf1NFCeJ5nnjVC5sIRf9Ntn+q8WPh/Z+Qex/ACc5Hb0rTYr9GZgp
        FPsEfFPt7ouuobzmIbEbWk7nSw==
X-Google-Smtp-Source: AMsMyM4wKRcZg5aUnzZa9vxE9pF4C+zjDXbo9H+0j3GiLP9O017cisStK57GfJ9Y2pLoplwY9KVY/A==
X-Received: by 2002:a05:6512:228b:b0:4a2:3e53:4af2 with SMTP id f11-20020a056512228b00b004a23e534af2mr17163113lfu.280.1667831631021;
        Mon, 07 Nov 2022 06:33:51 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id g4-20020a056512118400b00497a1f92a72sm1269818lfr.221.2022.11.07.06.33.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 06:33:50 -0800 (PST)
Message-ID: <c0ffd719-f1d6-9a2f-acb0-b777d9758397@linaro.org>
Date:   Mon, 7 Nov 2022 15:33:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v11 2/2] arm64: dts: qcom: sagit: add initial device tree
 for sagit
Content-Language: en-US
To:     Dzmitry Sankouski <dsankouski@gmail.com>
Cc:     linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kees Cook <keescook@chromium.org>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>,
        "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20221102155558.1895829-1-dsankouski@gmail.com>
 <20221102155558.1895829-3-dsankouski@gmail.com>
 <1a8bab07-46c4-1585-45ff-8780c02afd4e@linaro.org>
 <CABTCjFBth=jON-uuMU54cQi3zDcGYtGMbpaKitc1WHx+ciNiRQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABTCjFBth=jON-uuMU54cQi3zDcGYtGMbpaKitc1WHx+ciNiRQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/11/2022 15:24, Dzmitry Sankouski wrote:
> Is the master branch of
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> proper rebase?

Yes, next/master is ok.

> Or do I need to search and apply device tree doc patches somehow
> before running dtbs_check?
> I rebased on linux-next/master, and my dts is ok.
> 
> A lot of warnings for msm8998.dtsi, though. I think it should be fixed
> in a separate patch series.

Your DTS is not OK and it introduces wrong pinctrl entry, which I
commented under. It also does not pass test, as I said:

  DTC_CHK arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dtb
/home/krzk/dev/linux/linux/out/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dtb:
pinctrl@3400000: blsp1-uart3-on-state: 'oneOf' conditional failed, one
must be fixed:
	'function' is a required property
	'pins' is a required property
	'cts', 'cts-pins', 'rfr-pins', 'rx', 'rx-pins', 'tx-pins' do not match
any of the regexes: 'pinctrl-[0-9]+'
	'cts', 'rx' do not match any of the regexes: '-pins$', 'pinctrl-[0-9]+'
	From schema:
/home/krzk/dev/linux/linux/Documentation/devicetree/bindings/pinctrl/qcom,msm8998-pinctrl.yaml
make[1]: Leaving directory '/home/krzk/dev/linux/linux/out'


Best regards,
Krzysztof

