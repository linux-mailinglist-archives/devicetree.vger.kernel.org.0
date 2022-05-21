Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8076252FE6D
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 18:49:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232063AbiEUQtm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 12:49:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241505AbiEUQtl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 12:49:41 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8C8E24F35
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 09:49:39 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id u23so19044008lfc.1
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 09:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lu6ctKCt2lHKYhwtxz+pXEHdvqAJMeaJvVuerR30sMw=;
        b=h1yKPYdVIZmKMtFymP67pR9l9cbY4OpL6PaoF63Yzhqk33VOzNmju9d3gOoSUKfIoZ
         ytrFDOx0GMWonzUiiv6EztKU0sxuvoYH2xPp4Zy4OWglUPHsHEzsDfpCH7hxpUN/QUzp
         FepwIVpTKizvtDFVaDNXYH6+zYLzNaL6WQXPlZ9K4Fi2+P5ILGZ8CtE26QyoOz2MSRwE
         wKIMaGsM2C4qzUBnwK2ptjh0AmS3/LOcg6Pt0sytVD4wYx6xJzOq5T8hpRWEx2oqiDja
         iTuhW3foTshzwpdKfvHQcFa5ZX5oCnKZR7a/G1NIlnixbC/HFvXUk94skyBfjoNQEw+1
         Mgaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lu6ctKCt2lHKYhwtxz+pXEHdvqAJMeaJvVuerR30sMw=;
        b=QneriNbSvT13K4yeAkyCujsQBPrNSV6Ui2SzfRV3Y0C1ao8+dFik+DRtJMKSjtjOaw
         xkn9e2YFOIQdHEMz3Z5BqUG3yqC84spSgi5GW9+sdWcJmV1WO35ctiFVCKYdzgg+7hA0
         HCr34DPrsR3FjyexvJ8bXX6tNCyfZW6vFNsQuACkI9hvItMjfae4K/ujTUktKl9v4WnL
         R48gn0nRsdT0m35oiFsjBEqKPCGy88olAC3qTwRTPJy51SvmbYsBbs2RJSP76AT/j+v1
         UO+Sjr2e6RW7x+wFzBCSBPF/337wpE2NMPLItAJyvyFstZrObhi5mqdp4Dgr+MvpBvPi
         mJCg==
X-Gm-Message-State: AOAM533PgnC2pPK++jrQ1JhRHypyXMh8Uwdg/N4+sC1+3GTKOQUGBsba
        HM1WVm6hkqo6VLapqcrXhp7GeQ==
X-Google-Smtp-Source: ABdhPJzLtQywF8Lt9qOQmQhnhzgu7mgGOd8hPnEuO0Yg0dALwOuXEPlfUqLIFuqwMGAhXsmxB76+9w==
X-Received: by 2002:a05:6512:2146:b0:477:c619:ec2d with SMTP id s6-20020a056512214600b00477c619ec2dmr10203515lfr.179.1653151778074;
        Sat, 21 May 2022 09:49:38 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t15-20020ac243af000000b0047255d210d7sm1119914lfl.6.2022.05.21.09.49.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 May 2022 09:49:37 -0700 (PDT)
Message-ID: <45462192-7c88-cdd9-19ae-e078915bf6c8@linaro.org>
Date:   Sat, 21 May 2022 18:49:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v6 01/11] arm64: dts: qcom: sdm630: disable dsi0/dsi0_phy
 by default
Content-Language: en-US
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>
References: <20220521152049.1490220-1-dmitry.baryshkov@linaro.org>
 <20220521152049.1490220-2-dmitry.baryshkov@linaro.org>
 <20220521160652.oyqvurbjql23n243@SoMainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220521160652.oyqvurbjql23n243@SoMainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/05/2022 18:06, Marijn Suijten wrote:
> On 2022-05-21 18:20:39, Dmitry Baryshkov wrote:
>> Follow the typical practice and keep DSI0/DSI0 PHY disabled by default.
>> They should be enabled in the board DT files. No existing boards use
>> them at this moment.
>>
>> Suggested-by: Marijn Suijten <marijn.suijten@somainline.org>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 
> I also added my:
> 
> Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
> 
> To v5, to confirm the Suggested-by.

Reviewed-by tag is not used to confirm other tags like reported or
suggested. It means you performed the review and you state what is
described in "Reviewer's statement of oversight".

Don't add the tag for reasons other than described in that statement of
oversight.


Best regards,
Krzysztof
