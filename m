Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C057642CB2
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 17:21:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231845AbiLEQVn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 11:21:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230199AbiLEQVm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 11:21:42 -0500
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com [IPv6:2607:f8b0:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 744171D66C
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 08:21:41 -0800 (PST)
Received: by mail-oi1-x244.google.com with SMTP id q83so95436oif.7
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 08:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O4WPtqOs6pYDke8VCfpzwsIX+8zN33o8tLS2XMy/lFU=;
        b=BKgFbsKrLBnLPNTAN3XoKJV5uQDaqCRdMbksLcWKY3YdxLRSk0zWMH5WqvO7orcyYY
         UH2mkEnctD/XUnY4tjuPfD9KIK8h7iE39tVaZID/L6ejgR4GMQGIBGt7uz557o3DpLMk
         GVPMzGNjP04NZhf+XGPLYyJigz0HzKn0eciEv2yUFIuM/Y2f9okyr/Kf8V0RfdlIQPrS
         7s3fdfinPjU7/gL+2hGu1lFrfAuvsYnxJPmSlM1EJRZqwsEJ67AMV5vBBxD06kbvK8zd
         iKdYaYfTNMnmZT8VQICe8XEIGnWgpyoRT+zOEnoEgnmSCElF23kOdBV9Ri74ZvYgXkTO
         TyQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O4WPtqOs6pYDke8VCfpzwsIX+8zN33o8tLS2XMy/lFU=;
        b=0vFCUPsQfbAZQEUhHq+eDJ3Tli5WvZABQGBWT9MYxxGgXS9NGTpWZm7I+JtX95STPB
         KNWp7JP+ZNs2Bz0zO+crKzst46/GgZiL7OMgxwKIjB4gZTJ+U5WwCB5BF0NUJJdDsxEa
         nD2Fzcha4/YbMyDt5YVjMrkolW22cWGwu6COdbKaVMY53hvRT0Zi7r4xWIidwYvOKV5n
         NoiRgfHS0TN7ltW3DGOOsES4EoJNUNwMJY13IPRf6uF7WlaZegGuj2oKG+7RKwRJf4HF
         XLuLSAt0xyVD12MRsAWCZCbjWv63wG3EoRPM0cOM10D1oNgpbd47FEZzQbtKIv1J53Ig
         ebjg==
X-Gm-Message-State: ANoB5pmQCy44IoPdZS0aMgaJUvRTtWwQskHk5HiH8XyjT8I5j2ucatFF
        tRh19tfwjXl1FGWuLivtHmLDUqr072BUSMxwUNs=
X-Google-Smtp-Source: AA0mqf5+1DbOLMMR+st7/BBeRUgguA1KF/GhiyEJF5FGkYDWX4mrIJ+XjcHHqKF9RVMdFB0dvkyORUg1JjS9ICvFHo4=
X-Received: by 2002:a05:6808:1905:b0:35b:e3c4:c1ab with SMTP id
 bf5-20020a056808190500b0035be3c4c1abmr9887108oib.204.1670257300821; Mon, 05
 Dec 2022 08:21:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6870:5ccc:b0:143:84e0:abae with HTTP; Mon, 5 Dec 2022
 08:21:40 -0800 (PST)
Reply-To: phmanu212@hotmail.com
From:   Philip Manul <phmanu005@gmail.com>
Date:   Mon, 5 Dec 2022 08:21:40 -0800
Message-ID: <CAFKg=dYDhO9JYWNvfVUWd-mWhAM2uz=4OEo8QB3Q63Q-S1tQxQ@mail.gmail.com>
Subject: REP:
To:     in <in@proposal.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=2.1 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

--=20
Guten tag,
Mein Name ist Philip Manul. Ich bin von Beruf Rechtsanwalt. Ich habe
einen verstorbenen Kunden, der zuf=C3=A4llig denselben Namen mit Ihnen
teilt. Ich habe alle Papierdokumente in meinem Besitz. Ihr Verwandter,
mein verstorbener Kunde, hat hier in meinem Land einen nicht
beanspruchten Fonds zur=C3=BCckgelassen. Ich warte auf Ihre Antwort zum
Verfahren.
Philip Manul.
