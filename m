Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C357A315A6C
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 01:01:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234680AbhBJABR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 19:01:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234877AbhBIXQ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 18:16:59 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC3B5C06178A
        for <devicetree@vger.kernel.org>; Tue,  9 Feb 2021 14:51:47 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id e18so276319lja.12
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 14:51:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=+zlbiIHeEWSylL572dDyg11MHxrWh0joqSnh6rW+I20=;
        b=AKDopjXCI3CUFyDbr/+Tv8UJDxMZ2vwXj2Z5oorzxt7qxlaiOB8CUm1R/EvusFtRCV
         zYk6biXDZm4XGMDExmiXFwDE4M0j8aJLn1/oX6UC7deYDCpzXAPqOQoBPlye8wY9fuxe
         yH1KELHTz67QafJypjWiwQT6oFxIAaLELvCj6gYelFYh/UOOQbLWSlxZI9UrqoFXxM16
         86vtxVJnXE1dF/P+Y3pxBkG37TVX1A0UsQ4QQLLIPeoAAuQWNJnWNKNW7QOsT1kf4XbJ
         fDVvjqPuf82fV/i+1ss4FjeN2aKUDFlt+A1hG7/0LJlCDCrSgHTxVhp4YHvlcTs6A7FU
         OMbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:content-transfer-encoding;
        bh=+zlbiIHeEWSylL572dDyg11MHxrWh0joqSnh6rW+I20=;
        b=Exlsd/oQHZi+LqkLuPL/CGOjVtKdZwxzqUgjncPuu08s5lAWDTYf8FB4XZ5z6l3ynt
         rlobowjeuyVTqX4cOo/Kyfvog+N1y5DmWo/MfAvU2O808juKRfj6BlhmmxBPzceT5LBr
         2UctmmCFMbkVMygX9s1Buka0SskLoyvYQJOwZGVjq19LbK9bn3QW2DoDgOM+na/omkbD
         HbXm4swI5FXKMYqxe+JYPqppvEf3qCGTqOx9hBNGnAH51psQ4oJjDnDZE/7MDHAJBQSm
         xUtf0GZSiA2nb/4TiTmuWMwbjWsMmZ/J/wOaUYrkpztXIoh/hgToUv2sULiroc4LlSEs
         sRuQ==
X-Gm-Message-State: AOAM531lBk7+sSd3Gsaa+M8PNCdtTdXYFrdeWhzuIqK7wCdrqimq6jou
        7Mr6xqAWHxTpSlUkDkjZEjYwzNHx/c29GiepNsiFgER1
X-Google-Smtp-Source: ABdhPJxqQrvYouQOnxGUnQz0bMIp5x6kAgMXMcfpjBjkIs+9Z8h5xjBouxUaYpnnUoYSBvwtatdlXZOxtSwatEKT6Js=
X-Received: by 2002:a2e:543:: with SMTP id 64mr32365ljf.207.1612911106365;
 Tue, 09 Feb 2021 14:51:46 -0800 (PST)
MIME-Version: 1.0
Sender: robinrand8976@gmail.com
Received: by 2002:a2e:884e:0:0:0:0:0 with HTTP; Tue, 9 Feb 2021 14:51:45 -0800 (PST)
From:   Lisa Jaster <jaster189@gmail.com>
Date:   Tue, 9 Feb 2021 22:51:45 +0000
X-Google-Sender-Auth: -4o0gs9HybePmk0gNF8f_Q0XF6M
Message-ID: <CAJEAUxeWRqB=QPcDJdwTEckUJFWmA3wZhX-01VobfuEoVLKSdQ@mail.gmail.com>
Subject: =?UTF-8?B?SnUgbHV0ZW1pIHDDq3JnamlnamVuaSBlbWFpbGluIHRpbSB0w6sgbcOrcGFyc2jDq20u?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ju lutemi p=C3=ABrgjigjeni emailin tim t=C3=AB m=C3=ABparsh=C3=ABm.
