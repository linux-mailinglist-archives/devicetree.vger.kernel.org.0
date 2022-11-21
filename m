Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 710D1632BF9
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 19:21:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229622AbiKUSVO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 13:21:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbiKUSVN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 13:21:13 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55467C67EF
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 10:21:11 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id z26so12096936pff.1
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 10:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YfT/StUdt/TNq97yOnqXZF2EgZ5co+Uc0ASQ93hBnik=;
        b=cfvLq7cKsH0LKUiHU/LSJ9scbNoTqsIm8PBhOwUZ3mdmoHignjA5gIbEv8ndjOv6Ab
         O48djvnHOxrQuVkOGaTjK6x4fsdhs3/HTXlTsnyUzq5DEBwNzxR8zfoGxTnL1N/dZILu
         1MNH+W1BxFXZvO6S/WLRRQoae673G8oSaVd7NJeUtF8pnRMTFiasmqnV/T8biiWRG2QJ
         KCWbw5MZ4GVLChkiUhuurkLLOrMCyvTdyfJt83NbipLu/yAHIABzcn21GR20ELMlGsnn
         5tP2S0Ig9kpd2NrFtIpfegly+3baiB/KGaXigOwihiUGBmMVn5/SJHw41znvZX6HJY6K
         FJmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YfT/StUdt/TNq97yOnqXZF2EgZ5co+Uc0ASQ93hBnik=;
        b=Shx/fhdlrcI8e3mNiCjV+0c9ofwaQN/lb+ATD0sATRhHOUASExPDfs4QqwczE1gdRI
         RIdqsDwIKgHd1ZXE0MagUu/VrVWXFETpSeNqLptSDSAAyTMnGFCOV+dxIpXRV4Yj50rn
         Kznrj0VJfCJoN82dPWzyKocjV3NO0ucEudiGAeZRRKqtzAAd5f6NKxHm/JOiF2FVOKkf
         Gn4aNu5u9MU4YDGLrb2ABXp165sgLaLIGUNFJ7OIl4eomfaBXnlnOVQhwn/Ix1zX+sHo
         9egF0ky2xRFx/O66FmfGSAwIWkvZEbvQSW398BWOZ4/zi1+Lbg5XHPMfBseR1aW1HIeD
         Wtvg==
X-Gm-Message-State: ANoB5pmPJbiRs4Yshrd+bfZq74mMFVFILnmXoIgN+weCCxUyEZwMWy8x
        QolXjit1ASrQBhJILVMXvcLsgQ==
X-Google-Smtp-Source: AA0mqf481SzQ29SDy4sok5GUrhFWQwmFscxt8EGYSysGEqUvu7DGXe8SO/aW0ouOWM3XTCimC3Beww==
X-Received: by 2002:a63:5d63:0:b0:462:85d6:6276 with SMTP id o35-20020a635d63000000b0046285d66276mr13659pgm.293.1669054870822;
        Mon, 21 Nov 2022 10:21:10 -0800 (PST)
Received: from localhost ([75.172.139.56])
        by smtp.gmail.com with ESMTPSA id b8-20020a1709027e0800b0016c0c82e85csm10058866plm.75.2022.11.21.10.21.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 10:21:10 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Bernhard =?utf-8?Q?Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, mcoquelin.stm32@gmail.com,
        alexandre.torgue@foss.st.com, matthias.bgg@gmail.com
Subject: Re: [PATCH 5/9] arm64: dts: mediatek: Remove pins-are-numbered
 property
In-Reply-To: <20221121015451.2471196-6-bero@baylibre.com>
References: <20221121015451.2471196-1-bero@baylibre.com>
 <20221121015451.2471196-6-bero@baylibre.com>
Date:   Mon, 21 Nov 2022 10:21:10 -0800
Message-ID: <7hsfic88yx.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bernhard Rosenkr=C3=A4nzer <bero@baylibre.com> writes:

> Remove the unnecessary pins-are-numbered property from
> arm64 Mediatek DeviceTrees
>
> Signed-off-by: Bernhard Rosenkr=C3=A4nzer <bero@baylibre.com>

Acked-by: Kevin Hilman <khilman@baylibre.com>
