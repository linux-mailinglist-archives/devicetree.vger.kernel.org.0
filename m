Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCB9E6490B6
	for <lists+devicetree@lfdr.de>; Sat, 10 Dec 2022 21:54:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229529AbiLJUyB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Dec 2022 15:54:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229734AbiLJUx7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Dec 2022 15:53:59 -0500
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DC06165A0
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 12:53:59 -0800 (PST)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-3e45d25de97so95997927b3.6
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 12:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mhrAb+yQ8r5Pj6JbLxX6H679hMkP8WxpYQ53O58DWDA=;
        b=RbF+zsbkFenK5oP6pcpKvnk2q8et0ziZuupBucQguQu4GEqvyuCPTcXn5uANp7pTCZ
         ZVUkGih6xULK3gVfvZAvg6xIq+visBaDzsQP6Nxt0IO9340ODMtzdcNxI0FV5IwBzN9G
         u7WpoKfaM5hgUmT0PqGdJtXV5umTsNasJsVkUhIkDc2H7CXncszicY+FqnH9q05xl290
         eIHq9KAEMsW/xtaPZC1TQSIK2bpGH3/Qu9IToLO7UW4FdfX+cBk1qZU6GercHqSv/X5u
         +7DW8P4iB08wemfc0Bkyq++1a30UlOqLYZMCYVaZlyBWK+PF8mpwW06XUyv6y7bZprxH
         GQug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mhrAb+yQ8r5Pj6JbLxX6H679hMkP8WxpYQ53O58DWDA=;
        b=nbE0Ozv0rAaF+l9kZ4ek5+VICBT27k7Ceb/IjVx8JQ7fL0pC+4YIk7LTfBihKT0lfj
         6YdXq61YDsBRg+6vVWYmvfS+MJzQfEAhqhSWgWrjYz4QUnH42ghlaV6+W4sjCXXnD00J
         pMd3abWOkKO7dUqiv2aE+4fR8uLmgcelCCe7JX8R0N+GSqoanbhJPBgOFeUx7HkqQNUj
         6C0Gp4hN4M4ewgciLIbfE3hFdjQ4XWCaThec+JH/M8UNZk/8Wc0d0gchwAVdfE6EbITR
         c4tyTRI2kMnmMt/IYuyUhxchzY2gE3F+cUYUTXan2JLq8e12cNzhujTfxEDKm4S1NEA6
         qeYA==
X-Gm-Message-State: ANoB5pk/CGszh4KvpLrE3gq/u42KuPOymXgrSFVUveKR/UAZDRjIa6Gx
        urrSozmZ1so8AI6owdVIDOBJru87o0irA8epj0IVgA==
X-Google-Smtp-Source: AA0mqf6Euj77tZGpcvvSY4sr3yOGyX27MYYokI5ryaiVO9AZutI69pj2NuNT2S9i+T+aEe+S9Uo4ft9kiJCYkcye4dU=
X-Received: by 2002:a81:6704:0:b0:3d2:61bc:e6a with SMTP id
 b4-20020a816704000000b003d261bc0e6amr40897805ywc.132.1670705638304; Sat, 10
 Dec 2022 12:53:58 -0800 (PST)
MIME-Version: 1.0
References: <20221210200353.418391-1-konrad.dybcio@linaro.org> <20221210200353.418391-6-konrad.dybcio@linaro.org>
In-Reply-To: <20221210200353.418391-6-konrad.dybcio@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sat, 10 Dec 2022 23:53:47 +0300
Message-ID: <CAA8EJppQu=f5aXn3F_xAxZ6h+YgGYfCe6M8J77S_LLWH7NkE4g@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: msm8996: Add additional A2NoC clocks
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org,
        marijn.suijten@somainline.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 10 Dec 2022 at 23:04, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On eMMC devices, the UFS clocks aren't started in the bootloader (or well,
> at least it should not be, as that would just leak power..), which results
> in platform reboots when trying to access the unclocked UFS hardware,
> which unfortunately happens on each and every boot, as interconnect calls
> sync_state and goes over each and every path.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8996.dtsi | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry
