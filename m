Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A7BE6916C3
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 03:42:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230107AbjBJCmt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 21:42:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230285AbjBJCms (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 21:42:48 -0500
Received: from mail-vk1-xa2f.google.com (mail-vk1-xa2f.google.com [IPv6:2607:f8b0:4864:20::a2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1C3970965
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 18:42:44 -0800 (PST)
Received: by mail-vk1-xa2f.google.com with SMTP id b81so2008624vkf.1
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 18:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=52xSp5wmYAd5hFLJ9WZGw8pChWVD+OAjWtck6oN5dzs=;
        b=U1fCU9dL7zEQQUng1tf5EwsK3VWDYVsNNyBj39FW19d1Mr7MMWDk3X92i8GTR2E/v0
         47ufcXPTM+wllgKMkSh+S1EEpjBhwtLcJgqOur9mlxYBGhCpe05yzGcH6VqrQwTPoLAV
         Rt9ONCKI6fv1m3JL4fhZrhRxitGMBVxaGnuHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=52xSp5wmYAd5hFLJ9WZGw8pChWVD+OAjWtck6oN5dzs=;
        b=DLxg5nSuL47UjORgrEjsczUFiT9uQn3e2MjWpwlVmJZXh9WpddTCJbS/GqMg6vH1Tj
         cVMSJG/Vh+CsmkKIPIXCUNyjJ2mLr7Rc4Dm6dNOEEsblxUq5BHbnZXV6F6Zvt/6WCKO6
         mnfK7f3o9kt6p+gTZHnolZgBXof7ZmVoPF2Uet9pYThD1eSwYlfHIZTJQqW54rgd2iQw
         dcy2BD5A9bHVobrBzb3EUXFtu2Yf/ZCJsMdEA13yi5cVFrw28v1fhLDF9rLDEnygayMS
         9qZjhKgsmUqr4zAiD1HB56fAXoLErgRxxgkedqK1o4QG3V1TfVha0n5oPC/eTkksAu+W
         9CxA==
X-Gm-Message-State: AO0yUKWZsBx7UNawQq3vKN1TVnV6SnPo+EctpGKRWhMwSBgPJv1XVAon
        6w7iVqNqgf/QHsyDixfuJv9YsBAjza7KpWhq8HIl7A==
X-Google-Smtp-Source: AK7set/pFESZTcCKGsksw48p4w49A2qXmUP7rMlB1Od7HUbkX1rQ/0T8voev8FHMMturLnSAI+My622kXRWl2w49i/E=
X-Received: by 2002:a1f:f242:0:b0:400:db86:64de with SMTP id
 q63-20020a1ff242000000b00400db8664demr2812373vkh.22.1675996964119; Thu, 09
 Feb 2023 18:42:44 -0800 (PST)
MIME-Version: 1.0
References: <20230209160357.19307-1-matthias.bgg@kernel.org> <20230209160357.19307-3-matthias.bgg@kernel.org>
In-Reply-To: <20230209160357.19307-3-matthias.bgg@kernel.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 10 Feb 2023 10:42:32 +0800
Message-ID: <CAGXv+5HjnP6DC9RV9MUSatyuD0S64K+=kafifFJqYgOhSWu02Q@mail.gmail.com>
Subject: Re: [PATCH v1 3/4] arm64: dts: mt8195: Align vppsys node to dtschema
To:     matthias.bgg@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        angelogioacchino.delregno@collabora.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Feb 10, 2023 at 12:04 AM <matthias.bgg@kernel.org> wrote:
>
> From: Matthias Brugger <matthias.bgg@gmail.com>
>
> As the node is a syscon, this has to be reflected in the compatible and
> the node name.
>
> Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
