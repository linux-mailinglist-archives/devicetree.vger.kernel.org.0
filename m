Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7884793DCA
	for <lists+devicetree@lfdr.de>; Wed,  6 Sep 2023 15:36:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235036AbjIFNgS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Sep 2023 09:36:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235796AbjIFNgS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Sep 2023 09:36:18 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0D1710E2
        for <devicetree@vger.kernel.org>; Wed,  6 Sep 2023 06:36:13 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9a9cd066db5so90290866b.0
        for <devicetree@vger.kernel.org>; Wed, 06 Sep 2023 06:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694007372; x=1694612172; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4YeJdfBsGuG38QIaMG3D81Am+zjWthxqLI90JeDBQWY=;
        b=nrCtjxTJmAxhyzhiVpE1BAYUDQT/87006+ByFLtXNF3IoQN1OYkvffJjg428QOHfFb
         00wPMa37hS5f6qp3GDx3mkOI9sOrhQyn6C+8PZQp2e7trxku/4cEGbEQtfjUmiSxyyFd
         5nvd1gfMigx8tZDUjKixFzU9HqXfQNwltilfpaYH0m326lPoqb+1IJXXe3piKj3JOMW4
         +Wdf8LTDPoaN7MxRV4An4SL/DeTF4Mfbx+aOgC/Mx1PYEf6QkcYbiDA+JcRZkIJA7vEn
         ENdhkRpoQ25TDzjGFTKF1f+AIoftFMuwPBKHwUbTO2Z9SWE5m07v7aHAVkpZ6kobXmZT
         0sHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694007372; x=1694612172;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4YeJdfBsGuG38QIaMG3D81Am+zjWthxqLI90JeDBQWY=;
        b=gFnRfiE3I5kGx++Dc94rYaNTf7xhweWpWS+zyRMLsdfDIfpXygUkYJ027efJ3AgMiE
         S7lNKzbI7gmdQEr4sqZn0Y2h/7TNdJBmHEEjenFmHns2G/ca7UX8edgcSzFRgGzjW892
         mvvWgvp+hguwP3s6XknE1j55eiQbcTzZ6KKWhWrqHdbTUgTstKDYUSFlfeRpSlwBzWt4
         auo8q6W4UpeSstYrjr5USB5Qi0dmZ4FvTlV/+fBd6wga0qAHVW76pxFKxGAYvQev6bDh
         AnFrPdGEzBjH5Pr6SaogVtLRLg+ZEjxhPDVV+AAiFpZN+nKO1Q81hCNqRaUlB9QSiz7v
         726w==
X-Gm-Message-State: AOJu0YyT+5IMrI2Pf1sz+lHbHlDu84YKxCQSmpULy0VFVKewE5mPy2Lo
        BuZth6xTjxnLt7qL4kdg9QnX6A==
X-Google-Smtp-Source: AGHT+IE18RP4EAL8GbJgmyx98KCFFOte9tIG5j6mqstNXYbuysnwJjezfRL61yJYYbIU0QZ9eHyvUA==
X-Received: by 2002:a17:907:2cd8:b0:9a1:fe9c:eee5 with SMTP id hg24-20020a1709072cd800b009a1fe9ceee5mr2463749ejc.63.1694007372117;
        Wed, 06 Sep 2023 06:36:12 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id c11-20020a170906924b00b009929ab17be0sm9017351ejx.162.2023.09.06.06.36.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 06:36:11 -0700 (PDT)
Message-ID: <4202b582-c0a0-ce13-7561-f5185fe1930a@linaro.org>
Date:   Wed, 6 Sep 2023 15:36:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sc7180: Add ADSP
Content-Language: en-US
To:     Nikita Travkin <nikita@trvn.ru>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc:     David Wronek <davidwronek@gmail.com>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20230905-sc7180-adsp-rproc-v2-0-8ab7f299600a@trvn.ru>
 <20230905-sc7180-adsp-rproc-v2-4-8ab7f299600a@trvn.ru>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230905-sc7180-adsp-rproc-v2-4-8ab7f299600a@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/09/2023 12:41, Nikita Travkin wrote:
> sc7180 has an ADSP remoteproc that exclusively controls the audio
> hardware on devices that use Qualcomm firmware.


> +					q6afe: service@4 {
> +						compatible = "qcom,q6afe";
> +						reg = <APR_SVC_AFE>;
> +						qcom,protection-domain = "avs/audio", "msm/adsp/audio_pd";
> +
> +						q6afedai: dais {
> +							compatible = "qcom,q6afe-dais";
> +							#address-cells = <1>;
> +							#size-cells = <0>;
> +							#sound-dai-cells = <1>;
> +						};
> +
> +						q6afecc: cc {


No improvements.

You need to add ADSP to your board and then test it. Otherwise you won't
see errors and we do not want incorrect, even if disabled, nodes in DTSI.

Best regards,
Krzysztof

