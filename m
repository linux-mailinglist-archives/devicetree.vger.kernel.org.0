Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30A0E5F3391
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 18:29:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229522AbiJCQ3q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 12:29:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229849AbiJCQ3o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 12:29:44 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDFDEB875
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 09:29:42 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 130-20020a1c0288000000b003b494ffc00bso8836275wmc.0
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 09:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=p0ndohmCjYV6S8DNyNTuydMmycEbP6ICjlasMJWjXQY=;
        b=kW+4Z6dbs7+aC+OzArC9ht5Tw4sqPD7vYl1AdOhHGtyEaFDP2tPP6EhvnN1DlK+HFa
         H1KQR3YjOT0l0geFQsPYVg5muSrmTniYO4PsM0IomrBmRC2UzMOmPG/RH+TPAMS5yYYf
         H5Z66bIvVCW44WFa5rUDRRGFETs9Dom+RSCWFmxB/DUF2gBvuteFTc9mZgWjAgOvf7pQ
         2Xj9NHMTSMSetwSxsHdqd4EpgAnX9BiEg2D+f0Se3mcXmLvlgB2Uy7U1ET0QQJQMF6Bo
         xUItBma96bMtY9QC3erIcD2cDWMMKhEigmz+pEkr2KS03xqYCt4PcIaryJxsrPFKWJ4X
         VnuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=p0ndohmCjYV6S8DNyNTuydMmycEbP6ICjlasMJWjXQY=;
        b=nGIekY4ak2I08WblKeHH6PoqbfDMQvWnNzK+oYMLLxtDY1kZa88N5XMzQAbngyahN/
         2ewZ/+rYOENwIEAL4fIMAARa34hqH74ordIVh+XRzpKP9MZT86318fAHLx1H+fvRpmz/
         PDj82KlCOaFXU1b2AwjgrCqJVFTe3/Pd9GU3aVz8tPy67vXhQcYjSx9y79dA98PjKCGi
         Kpk947mp1k9a1+2viixYwaz0HL15YTL9CsKfEtSs44uwTFEtzlKswuXw8xzf4YGIq0Jg
         MWGzutHt8sJoOH4t+TVOoRs14zE2piG7UVE5IUocyK3Ib8uaWAaC1TsAwjk4CfHa0Uzl
         J/aQ==
X-Gm-Message-State: ACrzQf1k3PHFGD3o++27pJJKZG+Uc1/IqtqwMph71RFKSOGvBD5qlKOy
        KVbw+wSJ2Fcy2fl5BXS832uGcQ==
X-Google-Smtp-Source: AMsMyM7OTnsT+FulzqseXIdiDpcDNUc0TBf0A3uSEv8y4S35QColKsiMZxO2dagAalkPtRysPSkqZA==
X-Received: by 2002:a7b:cc96:0:b0:3b4:ffb5:6366 with SMTP id p22-20020a7bcc96000000b003b4ffb56366mr7292759wma.48.1664814581474;
        Mon, 03 Oct 2022 09:29:41 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf? ([2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf])
        by smtp.gmail.com with ESMTPSA id g10-20020a05600c4eca00b003a62400724bsm13927686wmq.0.2022.10.03.09.29.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 09:29:41 -0700 (PDT)
Message-ID: <9d2a1d88-077a-eea2-51c0-c3b6d24a09ec@linaro.org>
Date:   Mon, 3 Oct 2022 18:29:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 02/23] ARM: dts: qcom: apq8064-ifc6410: use labels to
 patch device tree
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
 <20220930185236.867655-3-dmitry.baryshkov@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220930185236.867655-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/09/2022 20:52, Dmitry Baryshkov wrote:
> Use labels to add device-specific properties to DT nodes rather than
> duplicating SoC DT structure in the device DT.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   arch/arm/boot/dts/qcom-apq8064-ifc6410.dts | 525 ++++++++++-----------
>   arch/arm/boot/dts/qcom-apq8064.dtsi        |   2 +-
>   2 files changed, 255 insertions(+), 272 deletions(-)
> 

<snip>

Quite hard to read, but not sure if it can't be done any better...


Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
