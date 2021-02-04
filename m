Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6839130EDE0
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 08:59:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234606AbhBDH7T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 02:59:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234511AbhBDH7R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 02:59:17 -0500
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com [IPv6:2607:f8b0:4864:20::a42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9691C061573
        for <devicetree@vger.kernel.org>; Wed,  3 Feb 2021 23:58:37 -0800 (PST)
Received: by mail-vk1-xa42.google.com with SMTP id a6so472875vkb.8
        for <devicetree@vger.kernel.org>; Wed, 03 Feb 2021 23:58:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=gTVWmw/coNbO+TC0z/2iPUJEiVh1+hC91na3iH/DhKQ=;
        b=dmScz2qcnGh2dwhfDNKBlBUSOxKRvCvjd2sFmnS/yTau4JguhabZzYOlXMpvyggnVz
         8E7tJysMYTndhEO6P5tvg1Dp2z+3paxmUGyHKtxGuk0zHWijDzbykfYDhuqVtcNmD+rd
         oI5zZxeUfb8qEbHKbSJYuHpTNGbDwX0e8o8tbpOXnY2UwqMr+HwYsjG62uhzT1sXCxkj
         NU1BySPCcdvJEqZGsu8sNvFmCoydDxX6vS7GO+8AfUnMpMuGFvH/xlIk1VK6KpMLQUKe
         4LjrmG7+D6oa0RTRIvR4coXY0Y8SQpdxX0GvPFaFQBFMMwj6g5/Al0EMz3tr1YTIQ+Fu
         iY2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=gTVWmw/coNbO+TC0z/2iPUJEiVh1+hC91na3iH/DhKQ=;
        b=FQow4b1gJQrrgAz/SGfKu2uA+HKLY/RPgtGV9AAXC3QIpEuy2aoclggdNhhcuxOz/d
         VG5p+5KzutraplPHqs6n6Zk2pM7sVwyoI3DAeD5XS+pfo/wfahLS1S4e/0/lvTpdKqKy
         fLT+DEDW7f0QGq/QLisufzSZwapRXocO6R9bkAMteDHlfn0M0QWPOzTrtunEUXovJEWZ
         vkgeIMmUSKsyX1XLLqShbvY00OA+6ke5xVjU3tE+5HQ/rpiGPlN41ZyycvEIy2iDT1CW
         uRuhzjePXl+3yF4wzPHiWx9z0bsLqp9jFtjgdBsaXtQM55GtJslwWYrhdERJ1JknaJiC
         mNag==
X-Gm-Message-State: AOAM532Vz2AbDF2KwZcFGQgqJWmFxubRU3PCt8r7Ehw8tVhTRHwOLb7e
        UT0QOIAjgoueLuViYTb2C35BaRqk5lhZqjMV7yU=
X-Google-Smtp-Source: ABdhPJxVdi//wKC2mR+kCGyz8hDFxHU0g/PBwDeRyvr2GVBTnueJQtZPpph34qxajAJoDY3aeh4UESPARXadgSZUKC4=
X-Received: by 2002:a1f:29c9:: with SMTP id p192mr4493199vkp.8.1612425516807;
 Wed, 03 Feb 2021 23:58:36 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a1f:5f45:0:0:0:0:0 with HTTP; Wed, 3 Feb 2021 23:58:36 -0800 (PST)
Reply-To: stephenbordeaux@yahoo.com
From:   Stephen Bordeaux <vah45333@gmail.com>
Date:   Thu, 4 Feb 2021 08:58:36 +0100
Message-ID: <CAKLcnFV2rgTu5ej8ntDeL4ePU7Ex1LhOp5jWa7tWi5LCxy6WSQ@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Guter Tag
Ich bin Stephen Bordeaux, Anwalt der Anwaltskanzlei Bordeaux. Ich habe
Sie bez=C3=BCglich des Nachlasses des verstorbenen Dr. Edwin-Fonds in H=C3=
=B6he
von 8,5 Millionen US-Dollar kontaktiert, der auf Ihr Konto
zur=C3=BCckgef=C3=BChrt werden soll. Dar=C3=BCber hinaus m=C3=B6chte ich, d=
ass Sie bei
dieser Transaktion vertraulich antworten.
Stephen Bordeaux
