Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7682A532312
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 08:24:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234882AbiEXGYX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 02:24:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234867AbiEXGYV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 02:24:21 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D14D65DA79
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 23:24:20 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id m203so465952oib.6
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 23:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=+/ObZQdcudoKPi9EHyxehxS+g8fV78JSk4u1MMEObnU=;
        b=RR44NxNVKKLmj3pbyXoM1CSIBI0iMsDArtyrjYZZrDyy5OyzQvNc80LxqkfGEHndka
         gjhYIG1ZJbwEq9iVnQkoFg2yVSPDXVNW1dUrVjdvHCIBPGouki3Nb3C+iB/uwATJBkJX
         CUSpHUlYPbOx7pXc7AjgBIcCPqBB71TGGT93VGgXhXdhbSINcqTESbI4e7t2b46Hv7QX
         XDfXT97T8pyV3P0mZUVl6vtbFJdEGWo5f0pNmuKoP2s7X/5Oysu+Z1PwRDpej9IUhKxS
         3BfvRp3+i45+/KLG+hjN7gvTvm34eI+BHvcgwjgP98xu0+mx4Jw+PienXVDBWReFeCsn
         So4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=+/ObZQdcudoKPi9EHyxehxS+g8fV78JSk4u1MMEObnU=;
        b=uoTEVz8rpzcVAg+gaM6WB0D4hl5MzhBuJHFmtNDfB0hWd4BHekYhLYSJd7sdm9A9+v
         Yl9uo61B5/23rkjOFD9z/e7+FeBYUZt5hUO2DRk/oTbbeM+hItTwzXJz7zyaHucp2APG
         UvosR6lrhQQah3sI4KcgVm0YREDKpoCAyFGhFnDKrJte4nmsBtQr5cQf5L9/sW9ym5fG
         FTbc2EBkqbGLuwPG40zRB823ypV61S2L7jK2gj/SZI6udgYvcmlygusj0eD37DDc6HEJ
         gq+7BGlBQYa0ZvyosE+Fd2SeP+4SzIYmw4axuuLGbyawucdLirIMNhXDOP18Wo1QbKgm
         yPSg==
X-Gm-Message-State: AOAM533NFxU77H8VsAIyH95Ss0uyzaihMkg8FnwsNRsUF37tH+PQuPL5
        68MjY9zi67/PdDe54fXry8B7YgVrGasEPtsZ26w=
X-Google-Smtp-Source: ABdhPJydXlyjP8NMal+g7MJmhuAeELXzNBplLBPqjCu+bvzd5b7CyvuLK6pHFoVrDuyy540GWT0Z+r0x6NOjkLKi11w=
X-Received: by 2002:a05:6808:3010:b0:2f7:3e71:88b2 with SMTP id
 ay16-20020a056808301000b002f73e7188b2mr1466518oib.102.1653373459709; Mon, 23
 May 2022 23:24:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6808:1791:0:0:0:0 with HTTP; Mon, 23 May 2022 23:24:19
 -0700 (PDT)
Reply-To: BAkermarrtin@gmail.com
From:   Martin Baker <ousmane.jahateh@gmail.com>
Date:   Tue, 24 May 2022 06:24:19 +0000
Message-ID: <CAGjRiL+W+nTvX_Jud+TQe1KmZ4e+KCunHLYyp4R_zZjJm5uiNg@mail.gmail.com>
Subject: Hello,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Morning Dear,

How are you, Please my previous mail you did not reply it
