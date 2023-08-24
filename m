Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48507787B6E
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 00:23:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229944AbjHXWWn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 18:22:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243892AbjHXWWU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 18:22:20 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91C1B1BE9
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 15:22:18 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3022364F0A
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 22:22:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A3DCC433C9
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 22:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692915737;
        bh=nDaWK2ZYJslfgVCfbk0p5HD/+1kMzBPr/POWcymb72c=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=AOmadFac/n7zR+X06B6rDbN1v7nSDFg3blI97B9of2mQWEStq80YFe3kGfitG8RTU
         vl+sjgGg6OcfiQ2tD+ELFtip5UuEKzm7P8YPsYnD8atjgyBbMDH1UP+70F1hxPrJUr
         JUpPekA/29otl/KXsBHYLMjO4h5AqUCP99xcxu9/YDnrpabT9Jt8YXyIZWeGZHzLjV
         Zb6QZ/McOhZxkrVEn4AcKRhvSKiHs1LnlPKtqsCf/sn2aPrL2Un9+Fh6gSlQM2t2Q8
         hotH8Mz2YLWJ4f1yjAA+WW1rg+LxtrBMqTKnPnCGgVO25ftDkkNM4RNBc+hqRpl1zv
         Uc+1c/1b6UOKw==
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2bcbfb3705dso4367881fa.1
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 15:22:17 -0700 (PDT)
X-Gm-Message-State: AOJu0YyEomRM2IGO71RVH1aSeeUZ3gCxXX9WLr/oigC3Bg/Y+30ZjdiS
        S+zOB7M0lC3QUsVDmzr9WwBydSBdPFGbAMNC6w==
X-Google-Smtp-Source: AGHT+IEV717zaURluh5yYI5CRKt0VIm1iBwYGiUoIPHAn1p99B5VX2d9FUJEzlVxUQ5BeKbglbE5njzfKulY+hE+/DM=
X-Received: by 2002:a2e:6812:0:b0:2b9:e0ba:752a with SMTP id
 c18-20020a2e6812000000b002b9e0ba752amr12615647lja.53.1692915735544; Thu, 24
 Aug 2023 15:22:15 -0700 (PDT)
MIME-Version: 1.0
References: <1692896179-73192-1-git-send-email-lizhi.hou@amd.com>
In-Reply-To: <1692896179-73192-1-git-send-email-lizhi.hou@amd.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 24 Aug 2023 17:22:03 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKea7u49G+9T5HciSFu854UU6POD-WygyiKB3O6yeBrAw@mail.gmail.com>
Message-ID: <CAL_JsqKea7u49G+9T5HciSFu854UU6POD-WygyiKB3O6yeBrAw@mail.gmail.com>
Subject: Re: [PATCH 1/1] of: unittest: pci_dt_testdrv: Fix compile error
To:     Lizhi Hou <lizhi.hou@amd.com>
Cc:     devicetree@vger.kernel.org, sonal.santan@amd.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 24, 2023 at 11:56=E2=80=AFAM Lizhi Hou <lizhi.hou@amd.com> wrot=
e:
>
> pci_dt_testdrv depends on both PCI_DYNAMIC_OF_NODES and OF_OVERLAY.
> Add #if check for OF_OVERLAY.

Thanks for the quick fix. I just sent an alternative which reduces the
ifdefs[1].

Rob

[1] https://lore.kernel.org/all/20230824221743.1581707-1-robh@kernel.org/
