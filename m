Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E733F72DCAC
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 10:38:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238168AbjFMIiE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 04:38:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241443AbjFMIhs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 04:37:48 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1A7B1701
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 01:37:34 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5149bdb59daso7434631a12.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 01:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686645453; x=1689237453;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eieFDOWGVlPEoV+uu02UIa/Flz5UfVj5E0AU8iFp47Q=;
        b=Dib4/U5h901JbAgTHrHwuRc/BP64q/6tXhACQawjYuM0GJ+r7DRohI2n5/ghXOCQez
         SUYhlc27QWItVo+B54UX8JxiV/yD64tVrGPdr/MoDjOThUDupsIHWIcKXJWcKloDtPrd
         w2ccx9w0Vj/A6lM9D33GPkD683D4Gb/k0UIIMAmpkdddAsrNw49AvW5S5XvsadI/bjeU
         EYJFU+q9vkoc2wHSBbx2CBFbrHscNcZoY8G+1vnqVxTYPCC5bCwGn0g0qoA/2vCmywwp
         1HrjLTx8yiaPEnBOR+VtEPbMwOoiGR+exjyJp3NTFigxRD1DeekED/E6ECFRVolcG7ja
         l3qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686645453; x=1689237453;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eieFDOWGVlPEoV+uu02UIa/Flz5UfVj5E0AU8iFp47Q=;
        b=l4FTFjs7I3wWuCUin7ffLqt42JBBKsH8DjuHOjDhbucDqY+2b9if6jCac0PRK4/nj1
         6BaTtrWTGuo6DA0MdE4kmwNIFly5lp3+nRekXMlbrIa+lGrtzt10Jg+e+eEKODcgq98R
         W+wk6cjZV9eNlsP465+QgFvXlpvObdrAyX/GvKwdaO5WXXPsPtE0BH8L0GX5P4hLoe6Q
         exzuKnGUh0omPabSL8JeiudRK9KF8Bnmx8BG1qPhO2rMfpI+0jp/PznXY4wtO/Y0AWDQ
         YCZndGduEcrgLaNckZ91i3YKtJ5wXmHI3vaCEfaUnzgrNH/g0ZS18N+XGbJ5D6wo/Qod
         PlDg==
X-Gm-Message-State: AC+VfDwCjFVKS2ZX9ov6cpLKWq5+8m2PvJj4IBDCdKOITHQYiWs0DujM
        RMLOO4UUX9fD/1vVyUR34Rsp1Q==
X-Google-Smtp-Source: ACHHUZ6R/7AEBNtcMlokSBYRLlWvEbeqRO5/L5a6JXMT0ObKEPPU5MFom5uiOFEtB2qwpbj2npnOcg==
X-Received: by 2002:aa7:cd10:0:b0:514:9e81:9068 with SMTP id b16-20020aa7cd10000000b005149e819068mr6407877edw.13.1686645453527;
        Tue, 13 Jun 2023 01:37:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id m8-20020a056402050800b005149cb5ee2dsm6105361edv.82.2023.06.13.01.37.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 01:37:33 -0700 (PDT)
Message-ID: <feebd8cd-7713-f086-356b-cc2657a9708e@linaro.org>
Date:   Tue, 13 Jun 2023 10:37:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH V4 0/4] Add camera clock controller support for SM8550
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Ajit Pandey <quic_ajipan@quicinc.com>
References: <20230609115058.9059-1-quic_jkona@quicinc.com>
 <09ccfa54-5ada-8dff-03a2-b2ffb07a58c1@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <09ccfa54-5ada-8dff-03a2-b2ffb07a58c1@linaro.org>
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

On 12/06/2023 04:25, Bryan O'Donoghue wrote:
> On 09/06/2023 12:50, Jagadeesh Kona wrote:
>> Add bindings, driver and devicetree node for camera clock controller on
>> SM8550.
> 
> This is very confusing.
> 
> Your cover letter doesn't detail any changes and your individual patches 
> all say "no changes since v3", "no changes since v2"
> 
> If this is a RESEND then mark it as a RESEND.

That's indeed odd. Three versions without changes...

Best regards,
Krzysztof

