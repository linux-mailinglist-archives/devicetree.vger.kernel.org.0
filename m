Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29AE054F7A1
	for <lists+devicetree@lfdr.de>; Fri, 17 Jun 2022 14:32:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382116AbiFQMcg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 08:32:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1381840AbiFQMce (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 08:32:34 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8491B137
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 05:32:32 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id y19so8496918ejq.6
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 05:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=nvAMjfzAieDdDEKI3b0QEO3tnYWZFtyUGMivUCSgJhs=;
        b=YfL5tjqyOQlGDBiNFNpCeNqtcYZ/gmIIKQ9E3FlTyxyEDAU++nwySeQ0YYJgLUyS+a
         d/LrRIaRKYg8dugKpxzgyktbPYNzfm8TLZjoaTTuLiN5nMBd6IUU/WRfKbfscLvrvwBX
         JlPKNk21xCPNH7OT5dYW9OkZYl6/e7tZL2YaZ+M4dAG6uiO/bYnwBlbm1hKODx+tRAGi
         0QWYNrFz/2ryRjByumLvMnZwB+u0GZBbI1YyCJilyWIic2yPrY/CY+HDLHyhwo04/O90
         IDfC8MDIyd56jiV5G13UEeBxm67cQeVCuf78xwQrpNZZDD+Zy1NypLe1buIur4swnaiO
         W6vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=nvAMjfzAieDdDEKI3b0QEO3tnYWZFtyUGMivUCSgJhs=;
        b=eVPgJ67gVNIBRLvJ+PwZsvE9FG6J4g4c9aeYgHC829wO41gWkEf7vSCBy9XY7lsX2R
         lpT1uRh6ISIgnNfBt+JGMV1zkLTzEw6c3TwtHJ4xy5wBoPCoOIaxT0P3Dy9mifDgxXbA
         XMiaIULYmHCeNIKzmYBBTlgB1RCC5Q+J6c0PHBp6s2E3c3+se2+du9dSckFwthuw3fCE
         EhMMD6+jV/KhARysXEhpQJN7tYsYcIfsQL4b5BYjZlGyjU39mUauv4L1Y/jff/F2zUi/
         n2F9ene/3OvCtwPwPvtyDUy/D0D3woLhHjJZzs95j6xHXukl71EmoWhfASlTrrlCJus2
         FvKg==
X-Gm-Message-State: AJIora9c+C/hUZYgnvWpzV19HevbNV4PnVlnn6I7h+oV2O6rBJfMPR11
        IlzsloRKNzoiPIT/c25Wqi6ikyEkUOwoTq5cVf0=
X-Google-Smtp-Source: AGRyM1uEdXBeR4KR6u2kpl3DDSSL0dEn5qonyUoBwJcwjY6hG5D7aFo+0a8UCaX6G8BCPWvAb7H9YMHf7+ZoX2rud90=
X-Received: by 2002:a17:906:7a1b:b0:712:237d:8562 with SMTP id
 d27-20020a1709067a1b00b00712237d8562mr9225275ejo.446.1655469151137; Fri, 17
 Jun 2022 05:32:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6f02:81e:b0:1e:3776:9ec1 with HTTP; Fri, 17 Jun 2022
 05:32:30 -0700 (PDT)
Reply-To: sgtmanthey12@gmail.com
From:   kayla manthey <elidayo14@gmail.com>
Date:   Fri, 17 Jun 2022 12:32:30 +0000
Message-ID: <CADX-dTuC9-Y_eQ6FegEErYRGJ2J92sJi-6WowWDjG6o=uWaFZA@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=4.3 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
Zdravo, molim vas, =C5=BEelim znati da li ste primili moje prethodne poruke=
.
