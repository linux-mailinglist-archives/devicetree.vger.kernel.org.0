Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02B346BA0D6
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 21:37:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229675AbjCNUha (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 16:37:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229636AbjCNUh3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 16:37:29 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4FCD65B8
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 13:37:28 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id ek18so36047178edb.6
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 13:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678826247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yHxQXQUVKaAlufj6InystnuWkNCnVQe8D4VwWl3oonA=;
        b=pfGyCIbrJZwVx0W4DnMi8P4qySG23P8DTfQ6bcWYb1CxLz36VKp+54AYJu5cmJ1igp
         PWSiIa9BAjGjup2Sz+W4XvZItk9qaJzCvk2w+KSwWYrTf6ci9a8DoKpK5lAGrwvljEwF
         9y96VtiuprjcBACb6rwO6UDVD62JxStyvCflmj/5Ek1zjo3yRBuy9dPe84wiAYFld508
         AeT5ABBcpDHOye8ZjLR3WLWMSZEaXo9t2QQelY/Y1uWmak/+UoK5FO6zfANpzV2iQnoq
         tZr/iN4ApdtBZ83RXtrD589xi0IvQODRab+E2PA+PH2g/177gdCU5/DrKlweSCCBbdL5
         9PHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678826247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yHxQXQUVKaAlufj6InystnuWkNCnVQe8D4VwWl3oonA=;
        b=1KIQlbq3pJoxqZV0FJOehgiHF/6B3+52A8An5KBJH/wDbv0/vLvDqsDcwbhdI5Abj1
         n+TTDIDWWeZUnttRTSaicvJaIvbWFGg8jY/43pzhuESoG6avpavmtcmdFV74YFahWmtR
         OgfZPKxM529YAwa/TePQv2mHHZuRuYVJ14k6cEUlBIZVBq1AL/UWxP31w+hf3zjHrVcC
         dWBHERXNWl+qQ7w69GG821OS+8TCaRH3FcBxsd47LFM/bTch0f5vIrrj5S9cOrF1pEqd
         L9iQ++YQsmAB5LvraSwwTr+QHVOg0ujgBji/sMr9ndZjKahEN8pWt2Hu9qyE8lhZV/Z/
         K3cg==
X-Gm-Message-State: AO0yUKWt0X/I0F67DlzAzOkuvf0JGzbA2CbMN2tuDOdi5waJpPsCoK7E
        ps/vmDmOR1viP04M5nfAW1c=
X-Google-Smtp-Source: AK7set9MyUrTfoBf+tiCtR8jIumRDt5q5MR/AB5bUT5NLEbDK7VQy3GBqHk2efSDZlXaiZPcylNxpQ==
X-Received: by 2002:a17:906:2b50:b0:8aa:c2e1:6a64 with SMTP id b16-20020a1709062b5000b008aac2e16a64mr3642781ejg.61.1678826247125;
        Tue, 14 Mar 2023 13:37:27 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-1-233.dynamic.telemach.net. [82.149.1.233])
        by smtp.gmail.com with ESMTPSA id z9-20020a170906074900b008eaf99be56esm1573648ejb.170.2023.03.14.13.37.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 13:37:26 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Andre Przywara <andre.przywara@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev
Subject: Re: [PATCH] arm64: dts: allwinner: h5: OrangePi PC2: add OPP table to enable
 DVFS
Date:   Tue, 14 Mar 2023 21:37:25 +0100
Message-ID: <1890711.taCxCBeP46@jernej-laptop>
In-Reply-To: <20230228114112.3340715-1-andre.przywara@arm.com>
References: <20230228114112.3340715-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne torek, 28. februar 2023 ob 12:41:12 CET je Andre Przywara napisal(a):
> So far the OrangePi PC2 board was running at a fixed frequency, set by
> U-Boot to 816 MHz, which is the best achievable frequency at the 1.1V
> CPU voltage provided by the PMIC at reset.
> 
> We already describe the CPU voltage regulator in the DT, but were
> missing the OPP table. Just include the default H5 OPP table, as used
> by other boards. My OrangePi PC2 runs just fine with those values, and
> now goes up to 1.15 GHz.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Applied, thanks!

Best regards,
Jernej


