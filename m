Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A6296D7E1F
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 15:54:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232502AbjDENyd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 09:54:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237207AbjDENyc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 09:54:32 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BD4CF3
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 06:54:31 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id r11so141304929edd.5
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 06:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680702869;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p8Iuh0IiFYm20OyO5pxZvbSOFVNhaWvAY5Q417BYDls=;
        b=K69pvH4Wpx6N/Hgu8hVF4CdTepkKmSgss1zM6Ey7r2QZLEN5VnIJjnRfwQcMBo4M8a
         ESdH4tDXaqEKob6suZP1XrG3sKFfNieood23du/yUgy8x3fmZtaMDdRhMmtVP/5cTc05
         xJWv0ng+LbAflGcF7ve7Xn9r+nYdZK9yuxy/I/4jlk2A359uwykvWw2v1elLxy9CORsW
         D/knuLne8tSJo2j+ape+Oq7EvQFeTPGkK8FJ3iXiz38WXRqpUAkrAPnw+CwqupysoXSO
         X4EPdKIDGhD/YQ8UWQul2zmShAvXxsKieW+J+oUWAO/6VjEQwv4ca7ctgi9Q9WpHNsca
         irow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680702869;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p8Iuh0IiFYm20OyO5pxZvbSOFVNhaWvAY5Q417BYDls=;
        b=uoCG+ochb/he5H/yDidV2aYmma14J+ai/oavHxsgoiCFUG+PaRRyO8bv5F8EwaJFpd
         Zi0RHrLj4wUdaNq5v7H6sZDTQ6IuqmAv7iUU+IA9QUglQ45BK0j4mS6BJXabztJw9X4P
         sgEgx8GwqmKQGJgNqEcoRfM6ZBnUI0ISigc0rN382422kAEdntiJUICEpyPCe6ibX5m/
         n8VimndylY0WHnE5vvieLMSnFyMCG/wguyel7ybdzMwgxdVt6aw5z0tbboZ0ZFUAo4M3
         n1ufNAkZQtwcZJeosy5PSsdipA5iqrcVipJFyFVt7j0gs2OyClVUoodogimmEyCGlzkb
         aNZQ==
X-Gm-Message-State: AAQBX9dlvFaVOVDlCNMpF1kcCFUa6GsqvvWmSdbF2b4nBxB3eOd/s4pG
        IP+Z/ja0I1VOrasNh7puxcbshQ==
X-Google-Smtp-Source: AKy350bPfXexYPtEgp8ZhWsektOp/hbKdkXu4xztIT8ip6Kd356UsKREg/wRh9RqozjJsoOo2LhMYw==
X-Received: by 2002:a17:906:4e59:b0:930:fe49:5383 with SMTP id g25-20020a1709064e5900b00930fe495383mr2870387ejw.76.1680702869311;
        Wed, 05 Apr 2023 06:54:29 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3f:6b2:54cd:498e? ([2a02:810d:15c0:828:3f:6b2:54cd:498e])
        by smtp.gmail.com with ESMTPSA id xd2-20020a170907078200b0094809142160sm5948567ejb.55.2023.04.05.06.54.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Apr 2023 06:54:28 -0700 (PDT)
Message-ID: <2b238291-8939-cd52-2169-db217bb9fe04@linaro.org>
Date:   Wed, 5 Apr 2023 15:54:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 00/10] Add IOMMU support to MT8365 SoC
Content-Language: en-US
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Yong Wu <yong.wu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230207-iommu-support-v2-0-60d5fa00e4e5@baylibre.com>
 <00a0d832-9a0b-6160-31eb-30d2e9c32c79@linaro.org>
 <3c51a5d3-8d76-9d8e-7cbe-6a2a1776b360@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3c51a5d3-8d76-9d8e-7cbe-6a2a1776b360@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/04/2023 15:13, Alexandre Mergnat wrote:
> 
> On 05/04/2023 13:43, Krzysztof Kozlowski wrote:
>> On 05/04/2023 10:06, Alexandre Mergnat wrote:
>>> This commits are based on the Fabien Parent <fparent@baylibre.com> work.
>>>
>>> The purpose of this series is to add the following HWs / IPs support for
>>> the MT8365 SoC:
>>> - System Power Manager
>>> - MultiMedia Memory Management Unit "M4U" (IOMMU)
>>>    - Smart Multimedia Interface "SMI"
>>>      - Local arbiter "LARB"
>>>
>>> This series depends to two others which add power support for MT8365 SoC
>>> [1] [2].
>> So does it mean they cannot be merged? On first glance I do not see the
>> dependency, so I wonder if we understand the dependencies the same. And
>> subsystems.
> Exactly, we shouldn't merge it before the dependent series to don't ]
> break the build due to
> "#include <dt-bindings/power/mediatek,mt8365-power.h>" in the DTSI file.
> Additionally, LARB will not work properly (or at all) without the power 
> support.

And how driver is related to it? If it is, you might have some unusual
coupling between power and memory controller driver.


Best regards,
Krzysztof

