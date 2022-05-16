Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37EF25288C3
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 17:26:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235742AbiEPP0Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 11:26:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245398AbiEPP0M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 11:26:12 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43A0DDED3
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:26:11 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id q18so14728522pln.12
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=9tJIBbJChc1BxjbWcZb0lFSvKfg3R8y5golyZaz5kgY=;
        b=bPPD0AbY/nuWlcpuNFHjjpiuyGzwqJ91kgp/PzxQ7X74q8SS4nw1vnNz+jful51SMT
         rbiZYD7cqCCfLqA4pFstou2zLkxFkPIxF+gxtyInT8aFyOyta3gbtwkVRSfm2nkqIHBk
         9YMlOQU3HXmnQRMI5KDgtECAeXzIMWSx0XIxk7INoan1umMtR+8YElApdDDvIqGJe9EW
         skIL0ajsMifK6mLK9m3n5fj799Kaa3dqH6rYz9XrHbxjVuirNGQkkomW+4+6Tn9sdh/i
         ixLvzjSFD8pCQ2tok75nxUfMZs4eKhl1m31qXYTtOrmMNJYDUvlY17jFKQd6rWtQ3sIS
         cHaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=9tJIBbJChc1BxjbWcZb0lFSvKfg3R8y5golyZaz5kgY=;
        b=pnfa9C/36BmR1bTydShmJOsbocyOn3QV3j+ybFXmsDVB3yLfD3yRE+zUo9nXwnxcZe
         6FODEfyx1zjI0ZDLoxdhezWy9pkOn5y9iHDMuzy7Y0ALCje94Pgw/d4yNT4xUa//7TM8
         fW2Mc437MrqtGHVuvIlhqO0dWfvdT12TTuTmhDDeqpQU8ZTirt0a+tByQ7N8LrrnErP6
         JEGET18s1VjAvREPCIF3SHoEoej2XZphvHt0UsSPO/MhFVqgrvJwms7wryeioNHN3RNH
         72B2XJNMqiXYnAtj+JJ1SzbHWCNGdc9ictlO/8m0FkvIiJdQE7BRxCBqDG5q373Wld8q
         RSWA==
X-Gm-Message-State: AOAM533WOO9PtLBij8qaVkNx2eEt9JIVoPNn4Xkuu7d/BVZFSZWz7g4Q
        R9Op1fWFH4miNFS213kAqPPcSt6wuMfHOOabo/4=
X-Google-Smtp-Source: ABdhPJySp3DbpaVhlc/N+8TME5DMxCLXBMhRiPXH9gQVbAvjRLDuO6rhyWuGbuqV55uAPD30sEtv5RoxfAVk8ophNRU=
X-Received: by 2002:a17:90b:4c8f:b0:1de:b3b5:ea23 with SMTP id
 my15-20020a17090b4c8f00b001deb3b5ea23mr31336689pjb.133.1652714770533; Mon, 16
 May 2022 08:26:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:522:f806:b0:447:2c78:d054 with HTTP; Mon, 16 May 2022
 08:26:10 -0700 (PDT)
Reply-To: abraaahammorrison1980@gmail.com
From:   Abraham Morrison <chamber00000001@gmail.com>
Date:   Mon, 16 May 2022 08:26:10 -0700
Message-ID: <CABLDrx4PrbfMPS2odXXkkNz_nd7xzG=9Bm4MQCwee_pGNDrgyQ@mail.gmail.com>
Subject: Good day!
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=5.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:634 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [chamber00000001[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [abraaahammorrison1980[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [chamber00000001[at]gmail.com]
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.4 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Aufmerksamkeit bitte!

Wie geht es Ihnen? Ich hoffe, es geht dir gut und du bist gesund?
Hiermit m=C3=B6chte ich Sie dar=C3=BCber informieren, dass ich die Transakt=
ion
mit Hilfe eines neuen Partners erfolgreich abgeschlossen habe.
Inzwischen habe ich mich entschieden, Sie aufgrund Ihrer bisherigen
Bem=C3=BChungen mit der Summe von 500.000,00 =E2=82=AC zu entsch=C3=A4digen=
, obwohl Sie
mich auf der ganzen Linie entt=C3=A4uscht haben.

Ich rate Ihnen, sich an meine Sekret=C3=A4rin zu wenden, um eine ATM-KARTE
in H=C3=B6he von 500.000,00 =E2=82=AC zu erhalten, die ich f=C3=BCr Sie auf=
bewahrt habe.

Kontaktieren Sie sie mit den folgenden Informationen.
Name: Linda Kofi
E-Mail: koffilinda785@gmail.com

Bitten Sie sie, Ihnen den Gesamtbetrag von (500.000,00 =E2=82=AC) ATM-KARTE=
 zu
schicken, die ich f=C3=BCr Sie aufbewahrt habe.

Herr Abraham Morrison
