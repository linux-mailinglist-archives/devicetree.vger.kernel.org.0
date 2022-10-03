Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 694555F33A8
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 18:35:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbiJCQfX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Oct 2022 12:35:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229879AbiJCQfT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Oct 2022 12:35:19 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C116F178BB
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 09:35:18 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id c11so17573269wrp.11
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 09:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=Zn7Hld56Hp9G0Lx6tDQ7hOOd3uxIrXgEBhBxYLMgs1M=;
        b=In0e6x8jiDZfw76MZrqr6ATpH2Vdomi/Bme1uhUVGD8vYLKZgBbTfiy/i32ZuqtFog
         RfJBRPoK+SrR1OGpOhN3qVRchXgPypD4JpHnSugVy/85Ed0xlohBJJucNQPOfod54u75
         rANhy0a94pGZP6RhPiCN+1gIFDqwoLgJnIdy2IT/vEkZwKceb6TQHOEpjoCcQDJMwWad
         kRw9Da1HpfU04FxoU19XBprxUiFr07jMcZMdBiTvW8f0PGMi0ejVZ2qqpaiUxzBO5Bgm
         bCtpukOLMn2/UFQ/vga+l6lJjNfPFIu4EOnn7Lt0AQvOmeMV4M/wKiOcp2cwnQl0+J9g
         bRjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:reply-to
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=Zn7Hld56Hp9G0Lx6tDQ7hOOd3uxIrXgEBhBxYLMgs1M=;
        b=4XVSujs1m3EHhf2gp7mpi3VN9Og1Fo43WZ7FA9rEV8PEwERSQZXWv+mAuxQvbihmVv
         81Lss/dFPqzMGsI4Cef4DsaG/A1ZR5q7148U4PWNJLImiK0RktvbseB6K+3vlrffVJ92
         OnHLaG1FVDf7s0G//6zLcfT0OdObXZQ3Ft3aQfOsXEjWriUHAcrDPq9VTKyj6GaqYhP4
         v0BcYjJ1XzHWMK2JQmSee/p2ss08G3bmPQS0yC8zxh+oK3zlbrltbTsBkIChkcKaEHTn
         jhOfnC3vZhVUNgk68mwi5SqXKMY4IGE6wtOz3kRQvYXlMdVv3W2XPCVrQVPRQwf3r5t0
         9/Lw==
X-Gm-Message-State: ACrzQf3WVgtLesUmBW6gdHgnqCPAP69WC9XLf17CpkZav7D4hMkNma6b
        jQJiiCzlZ0kw7kJOAf3jyFiWxw==
X-Google-Smtp-Source: AMsMyM6Nx8IneXGWqouvSpzFkcRL8JSpgT0Fk+Cj+2C1L7XndXa3J4OdoPgHb5gwFTK2s2VtOOqBQw==
X-Received: by 2002:a05:6000:10d1:b0:22e:3bc5:c91c with SMTP id b17-20020a05600010d100b0022e3bc5c91cmr3963058wrx.368.1664814917293;
        Mon, 03 Oct 2022 09:35:17 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf? ([2a01:e0a:982:cbb0:9da7:1217:d35f:d7cf])
        by smtp.gmail.com with ESMTPSA id i16-20020adff310000000b0022e344a63c7sm5536745wro.92.2022.10.03.09.35.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 09:35:16 -0700 (PDT)
Message-ID: <2a0927a0-128c-e287-8308-45a3174ed451@linaro.org>
Date:   Mon, 3 Oct 2022 18:35:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 20/23] ARM: dts: qcom: msm8660: move pm8058 LED devices to
 the main DT file
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20220930185236.867655-1-dmitry.baryshkov@linaro.org>
 <20220930185236.867655-21-dmitry.baryshkov@linaro.org>
Reply-To: neil.armstrong@linaro.org
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220930185236.867655-21-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 30/09/2022 20:52, Dmitry Baryshkov wrote:
> Declare PM8058 LED devices in the main msm8660 DT file to allow them to
> be used by other devices.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   .../arm/boot/dts/qcom-apq8060-dragonboard.dts | 12 +++------
>   arch/arm/boot/dts/qcom-msm8660.dtsi           | 26 ++++++++++++++++++-
>   2 files changed, 29 insertions(+), 9 deletions(-)
> 

<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
