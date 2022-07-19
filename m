Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F78E57955A
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 10:39:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231645AbiGSIjl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jul 2022 04:39:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233598AbiGSIja (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jul 2022 04:39:30 -0400
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E308426113
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 01:39:29 -0700 (PDT)
Received: by mail-il1-x134.google.com with SMTP id h16so421033ilc.10
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 01:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=aldwNOIhCnsRa8kDmP4v0FSvFgLUUFd4stBq4fYWoN4=;
        b=SDcfdH767CecHlltOnK8fS3Xn0FOnW/wjq4XfDMI+gVEkvfXJapDwFtH2zzYUnsa36
         hzm9f8iJhQ9HA18ut/p999a4Ke74XQ/qYboSxvmnosfXV7wKh/CCAD1cjJq74Pg6sBPF
         Ach5oPPwNKG7gplsr8eTY2QlO5VyXo2LoHQhiOtK7YS9Js7Cyn4qq1UogQjtOSYSrowN
         T2p5ranBkgujBkO9S5gnkRuKlQkc0yWIRhvFKd/yC/4gajVP3eMPcBsQSCZswBryXp0Y
         mH58LxBbbLWNIcuQH9BIDIw2eaWbZHD4DsVPgCAtFpQojDuoCwdlk9Ym8NylpaZ5pVlY
         5iCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=aldwNOIhCnsRa8kDmP4v0FSvFgLUUFd4stBq4fYWoN4=;
        b=RxDCP9g0mfxh9G6EDYcTgn+3+hlxidYMrnCGCXwrGbbUtUGlXyRJcnYxvNpVUHwwbX
         szeTRHLj7nw8v/+EEQ+ka0PJiORnjAeJAaBcmekZGS3CV88L67sxkSSKDnsDcwfKIjNu
         9ZKULieWtanGd8LiBrOJIsTD6NlIicbbXIkTjBlC48Cmz8F2XKIc1lftSdzgHmROOBYo
         1ZtLpz/5bjAKwyBCDublp37SsgrxC1GPlowhg9EHnKqPbuoCr00F+ZkYQbNekSzRX2lW
         Eau0siG1D3JhPpAT0H6YpxtvERXY0CTtUMDvIq1u/7jRf1R1cSjRBWPeH6sfFNTI1YFO
         Jn3A==
X-Gm-Message-State: AJIora9uvFLB992mYtm3o1mYCV+NLE0Bcg7rx+J9dvDZ/w7FvOyBBEv5
        7pbHCGt+BzIdpcXY/6yPjtr/lpWZEh52PhorccvUrtaBkFQ=
X-Google-Smtp-Source: AGRyM1sZmbvnVdTjJMsahnoxe2oU8TRSWWdZUomw1GKPsLvediDqgMAaRVLRK12Z+Lfl0mjZcZ94zmRj3WdEXuCmIJw=
X-Received: by 2002:a05:6e02:b21:b0:2dc:6d2d:5a61 with SMTP id
 e1-20020a056e020b2100b002dc6d2d5a61mr15942129ilu.273.1658219969404; Tue, 19
 Jul 2022 01:39:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6602:2b06:0:0:0:0 with HTTP; Tue, 19 Jul 2022 01:39:29
 -0700 (PDT)
Reply-To: infodeskuk02@proton.me
From:   Tom Crist <williamspker996@gmail.com>
Date:   Tue, 19 Jul 2022 10:39:29 +0200
Message-ID: <CAKc_tm6Xwj9ib63fCWR5RF3H+F=djT2poDk-822WLkz18xx0bQ@mail.gmail.com>
Subject: Re
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.0 required=5.0 tests=BAYES_60,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,LOTS_OF_MONEY,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_MONEY autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
Sie haben eine Spende, ich habe die Amerika-Lotterie im Wert von 40
Millionen US-Dollar in Amerika gewonnen und beschlossen, einen Teil
davon an f=C3=BCnf gl=C3=BCckliche Menschen und Wohlt=C3=A4tigkeitsorganisa=
tionen in
Erinnerung an meine verstorbene Frau zu spenden, die an Krebs starb.
Kontaktieren Sie mich f=C3=BCr weitere Informationen unter ;
infodeskuk643@gmail.com, infodeskuk02@proton.me
