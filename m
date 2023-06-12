Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED2E972B918
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 09:50:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235408AbjFLHuc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 03:50:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235941AbjFLHtr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 03:49:47 -0400
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF50D173C
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:49:14 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-1a49716e9c5so1929082fac.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1686556093; x=1689148093;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ce2/2PowFKOkbwSSqlzAwxL75uI80kMVjfjZLZKhUGs=;
        b=MyZnoE/1c/sCrcXiChxipeZ2gKiREySI6/uw+6SGu5e31wtJCYpSKS/4Et9KmlofLP
         S4NL/IibLY931s968at959dAjyKB7YexXhiYH1qfJ5ElJGA7T/gRNsPEDncbPN93Mz8U
         /ap3apM50DfhSFyGXedMPNxFuUikYHPuePcO6TIeKSCaMV4VyKdZRsvN/gzzdHxpx6tK
         CllDElIpGqHbxn84C+Gw7wrha/oxeS1XIp+JGHg3A6V5/s4TBML0MngbVKVnREhpU+gB
         9tNRk9KtxweaX83pFINRXrOrrkTvN7Eqwl62sDvoRAVeFcvOTSJjLnHVCDzb2srwqGjx
         k9Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686556093; x=1689148093;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ce2/2PowFKOkbwSSqlzAwxL75uI80kMVjfjZLZKhUGs=;
        b=KyO/IQsqBDz7VfJXinNW2fEz2BrNvdvkbZTxm7JloazGN8EQzbfsyXi7M2i5aAFNsv
         68rlNfhBkQb7Q6U5zvVbm5QY/KeCnKyxvG1f0wn5w0uRHYcGfvHwnONvkCQwa4fNIcwP
         xe1k0F+tkao9XC4/kLXuft9nDvCRx+6qje6RnxYymh85h1MDPdc7z+G5u9OjqlKASGM+
         TZ06eWcO3K8srfh8851fiDwUP5MMc637rEXAvg1YKOHLdFqVwb0nwzdXdA2QNxmF/Xe3
         z9NxVlyI1SZ6xM1v6nNNxqGd+jXYcAzyPokUmeL7C4Ej3sbP+ABXPD6J+sOFOAskOQnx
         FXfQ==
X-Gm-Message-State: AC+VfDz2m0UfRuf3aUQ5xU/pVyAPFTTPR68rDLTBo2Y19MBbTzcV+uEJ
        COKEDQqdFWFIs4nlA05L4vWswohAVBBN1QSR9wk=
X-Google-Smtp-Source: ACHHUZ5sJYvL9TZNLH0BQd1Fc9f0cmvZomQa3cmFnFMy60vmYr203ADmIaa55NWbbJoZiVglLnaglg==
X-Received: by 2002:a05:6870:9545:b0:17a:c612:ae0d with SMTP id v5-20020a056870954500b0017ac612ae0dmr4979103oal.49.1686553681749;
        Mon, 12 Jun 2023 00:08:01 -0700 (PDT)
Received: from sunil-laptop ([106.51.184.72])
        by smtp.gmail.com with ESMTPSA id eh11-20020a056870f58b00b0019f188355a8sm5530728oab.17.2023.06.12.00.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 00:08:01 -0700 (PDT)
Date:   Mon, 12 Jun 2023 12:37:53 +0530
From:   Sunil V L <sunilvl@ventanamicro.com>
To:     Conor Dooley <conor@kernel.org>
Cc:     palmer@dabbelt.com, Conor Dooley <conor.dooley@microchip.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        Yangyu Chen <cyy@cyyself.name>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 1/7] RISC-V: simplify register width check in ISA
 string parsing
Message-ID: <ZIbESTLWl1hjw2FJ@sunil-laptop>
References: <20230607-audacity-overhaul-82bb867a825f@spud>
 <20230607-splatter-bacterium-a75bb9f0d0b7@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230607-splatter-bacterium-a75bb9f0d0b7@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 07, 2023 at 09:28:25PM +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Saving off the `isa` pointer to a temp variable, followed by checking if
> it has been incremented is a bit of an odd pattern. Perhaps it was done
> to avoid a funky looking if statement mixed with the ifdeffery.
> 
> Now that we use IS_ENABLED() here just return from the parser as soon as
> we detect a mismatch between the string and the currently running
> kernel.
> 
> Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---

Reviewed-by: Sunil V L <sunilvl@ventanamicro.com>
