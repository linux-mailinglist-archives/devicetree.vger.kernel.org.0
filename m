Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D73BD53862D
	for <lists+devicetree@lfdr.de>; Mon, 30 May 2022 18:36:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231794AbiE3Qf7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 May 2022 12:35:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237660AbiE3Qf6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 May 2022 12:35:58 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DF299CF5F
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 09:35:57 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id q21so21921463ejm.1
        for <devicetree@vger.kernel.org>; Mon, 30 May 2022 09:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=m/H8RjStCv6hVv65KzAZgkQzcHdDtuUqNpn5uu8u3WA=;
        b=ITtfnNxCzyfu3T34xpo3BessMurf64BQRTFaoEkce7LW24OcpR1fL6eDNc1PdNPjya
         rQCX6oOFNVopAcKKdBO84qSBBIDyx1JPVzAbzT+86g+clIgy97cgBNxgSpaFyzv1nj0R
         kkud0RX+sfxrjqio7DEe6EEuklJ5gFyWL5hmsijRCSadfuAo1ifoomMYqFYTO3IId+o5
         AZL31oVo3ChcvudVcTQLuj5TDnZIxmEGre+md6tdmF8z6ZACjtd4pGifC4qyhaI5N1aS
         sPXFokJK9Zc6oEl++6rd3XV+xgycZDkmxqAId6nXz4GEF1XfpHiUcg/cSNyxLPwnXLfB
         pPVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:sender:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=m/H8RjStCv6hVv65KzAZgkQzcHdDtuUqNpn5uu8u3WA=;
        b=OuCRxhqjK4/j0wLADiTUqaxJ55chKBVf/9CuWUEsrfnrKSSobdcNstZs/PwFnIIhqL
         PUuTEBwrmRQhuv/HMF7+iwUI8ysdLOWZHp1blxdgVEL5ttH95M7o96krtIwO4kCABJoi
         +owbAKPjsoRglT7TTFGH37Yz8Die/K5tVyjpWP1Qo0mwyD9VWnJ/LBsyZVS2JUHfAG3t
         1YXj6mQgKbsrFOGE7FNT3qCigzybCxv30CioZ9tL4ZjiSHx6gFLAVT6s21ZoiTNwX6Nm
         /mpi1DQFau/ZVjP0J+fkEwjunZXLrw8t8PRqfgIMT2wGisM8ko1Ad4a8y2G64xEgdpmk
         V1sA==
X-Gm-Message-State: AOAM532EJ+nds4OaDIQd4w2tGmiIRNdDoBr2Uvu/G4UQLhRVmjquFhZU
        Uj5k33+dm1DK/OH2IiGjuPNDFi1RLHaXo+6BvGU=
X-Google-Smtp-Source: ABdhPJyJK7mhQaa5TSsA32HIqFDZhiUfhfz9vex/hoQEhEv/6mqkHF9pU43Y+vrWjO8i/SXcuNxDGAk4XEBc5JZ59Fo=
X-Received: by 2002:a17:906:5055:b0:6ff:1dfb:1e2c with SMTP id
 e21-20020a170906505500b006ff1dfb1e2cmr20361189ejk.200.1653928556035; Mon, 30
 May 2022 09:35:56 -0700 (PDT)
MIME-Version: 1.0
Reply-To: sgtkaylama@gmail.com
Sender: sgtkaylamanthey33@gmail.com
Received: by 2002:a17:907:6d91:b0:6fe:3f33:afeb with HTTP; Mon, 30 May 2022
 09:35:55 -0700 (PDT)
From:   sgtkaylama <sgtkaylama@gmail.com>
Date:   Mon, 30 May 2022 16:35:55 +0000
X-Google-Sender-Auth: H3BSB1F7ChE4b3-G88WISAiD0WI
Message-ID: <CAOKEGmKGL2O_3DQdohZFHR6KN5N228r_hHzbkXrBcSMqFSXPWA@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Greetings, did you get my two previous email that I sent to you?
please check and reply to me

Pozdrowienia, czy dosta=C5=82e=C5=9B moje dwa poprzednie e-maile, kt=C3=B3r=
e ci
wys=C5=82a=C5=82em? prosz=C4=99 sprawd=C5=BA i odpowiedz mi
