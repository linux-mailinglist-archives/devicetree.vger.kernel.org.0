Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B4185F3CDD
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 08:47:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229583AbiJDGrA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 02:47:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbiJDGq7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 02:46:59 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D4DE2CDFE
        for <devicetree@vger.kernel.org>; Mon,  3 Oct 2022 23:46:58 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 10so19780573lfy.5
        for <devicetree@vger.kernel.org>; Mon, 03 Oct 2022 23:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=tH7+t2HqGTTLAn5U15AmEC7Y23/7rS4kVyazgbWS48k=;
        b=Z+dG+aszAmppo5XSVUGmNR26l3xE/M5MR0WHpls1gy4foJW7nCl4Mm9ekNUVXRoaH0
         QXt8m1Fahx0q8u2fRxu3R9xpsYEb3M19hXjQlwjaOXW+g8948QUcQhIZDwnUpyPUnaea
         XnaYIbPhkdtJLKIPW3ubMjP39K/rb4sD27REiGS4H66/OHKFWXA6d404O9QpWdqa7uwi
         yjapYxRCKsKpf5sIRbiDxTiejfL/P2cqr8C9NbHKHGJefolqRuaIa7k7KDG+ZoCuZe9B
         j607D3QcVBtTz6rtmcryvKPod2n9LNw0Hz7Qu6dQYm+XAhLzh8rK7PrBuPyYon7JLtae
         xpTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=tH7+t2HqGTTLAn5U15AmEC7Y23/7rS4kVyazgbWS48k=;
        b=3kSAIKs5vSSPWID2XNBDcVuJbO1pm9BMKfK1+6SFtJZYOxV+Ta8ExHThO7WygdsbSo
         J3rX2l1ri6wF1j+Okfz60ovJavrtiFizB7jLBw20t5Wlf0lq29kMmx10KMy80LHG1I7Q
         pjR+v5Ckl4YDHtnS3VUgGV5osDthLfJbzS4HxoZvT3WHjn4BqZoctojgmJTw5P/xno4F
         5BVBsNYTTA+usfwM+G+hi9SqwkcTbb+1MONqH4yNnp0YqFhIIyxa8OwINH9D1qf0Hm5N
         +wH9qYn1ae8rydh8nRTB5VpiejL5Ytdmt+DQK1Def34Xd02y8LNJYj0P60P7EwpodDkj
         9+sw==
X-Gm-Message-State: ACrzQf0TNuAyaHIkNq9kMSWeShu9LqcPX51Afd+ar9vgRmiltR7B2oFZ
        70uEvaggxNib+iiNdcF8bjHpDw==
X-Google-Smtp-Source: AMsMyM6xcFMYAmJwdvVQO7f4C23opw1Pd52bbpVCkk0rpyH9p8JeRuwLoj2xmeSfWLKP2YQosWgrwQ==
X-Received: by 2002:ac2:482b:0:b0:4a2:27b7:41d2 with SMTP id 11-20020ac2482b000000b004a227b741d2mr4626048lft.472.1664866016635;
        Mon, 03 Oct 2022 23:46:56 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id cf40-20020a056512282800b0049110ba325asm1777595lfb.158.2022.10.03.23.46.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Oct 2022 23:46:55 -0700 (PDT)
Message-ID: <950f3844-ed7e-4f18-9a27-f06c7947af02@linaro.org>
Date:   Tue, 4 Oct 2022 08:46:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sdm630: fix UART1 pin bias
To:     Doug Anderson <dianders@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Clark <robdclark@chromium.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        "# 4.0+" <stable@vger.kernel.org>
References: <20220930182212.209804-1-krzysztof.kozlowski@linaro.org>
 <CAD=FV=WHmGi0yxFNbdQ=BXjypDWkW9iS3jBnr2gUhTa5qch90Q@mail.gmail.com>
 <76b3269a-1e04-1e93-c06e-ec0f28536cc5@linaro.org>
 <CAD=FV=WPrLNhJHhcutykGsE5rDCvxxPGcgqboWP6Oqs+Kw+M5Q@mail.gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAD=FV=WPrLNhJHhcutykGsE5rDCvxxPGcgqboWP6Oqs+Kw+M5Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/10/2022 17:29, Doug Anderson wrote:
> Hi,
> 
> On Sat, Oct 1, 2022 at 2:58 AM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>>> I would also note that convention on Qualcomm SoCs that I've worked on
>>> was that bias shouldn't be specified in the SoC dtsi file and should
>>> be left to board files. This is talked a bit about in a previous email
>>> thread [1].
>>
>> Uh, that makes a lot of sense. It is almost always a property of a board.
> 
> Right, though it can make sense to have a "default" in the SoC
> sometimes. 

If the default is safe, then could be. But it is still causing a risk of
developer just forgetting to configure the configs for his board.
Bringup of DTS should be a conscious decision, not just "copy and hope
it works", therefore recommendation is to configure per-board properties
in board. Even if it means duplication. The same was for board-provided
clocks or aliases.

> For instance, for i2c you almost always want external
> pullups so you can tune them to the speed/trace lengths. Thus having a
> default in the SoC file to disable i2c pullups would make a lot of
> sense. The problem is the ugly / non-obvious "delete-property" we need
> to put in the board.dts file if we ever need to override the SoC's
> pull. :(

Which might not help in reducing amount of code...



Best regards,
Krzysztof

