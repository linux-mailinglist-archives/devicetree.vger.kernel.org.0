Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6898A6EC438
	for <lists+devicetree@lfdr.de>; Mon, 24 Apr 2023 06:02:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229487AbjDXECd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Apr 2023 00:02:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbjDXECc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Apr 2023 00:02:32 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8B5110C1
        for <devicetree@vger.kernel.org>; Sun, 23 Apr 2023 21:02:30 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-38e04d1b2b4so2356348b6e.3
        for <devicetree@vger.kernel.org>; Sun, 23 Apr 2023 21:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682308950; x=1684900950;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G7upYASidmeqEEydII3qqc7RD6bnaXjO6ELYE2uwAgE=;
        b=TC2nsIrnp7JvoMDth8cCOtvY0ifm1XVl1oUwOvAg9KCwpJdsnOZEYWI9HP2ZI0Sgiq
         rs1BviMJ6/8YLIwnOhNUoBNTlTUvUfjJnhiQUwXHgWGhoZsZZz+m2gg8vjgKsRzlRtn3
         HYuwoak5jjcQfFrgn2BobawELv7vSVnGf6mulYWEmDrEtEAYD7Mg5mpBwwa+1MJPCKjH
         qsD/Mb/npzVJ7DmK8qKXcP/HIuJ2J1R5dHqiU9gfmSBaoNK/soeSJXLd6HdbWSroGvk6
         EBVhjAfXttSesiswMLq84DpAx9Qqrj30HizMAs1vOTODzWqcpsD9PfWu3XLHgIFNBkUt
         DIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682308950; x=1684900950;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G7upYASidmeqEEydII3qqc7RD6bnaXjO6ELYE2uwAgE=;
        b=Ix2utTqoFxFlek6AGPzpUGyTjXbV+i/5qmrKLAxT3mP8pr7+8twPBR0QcQ+cq6QSV+
         tk9aoyV2kqsEZlI0u0YQMTxS0ozZ/lovJFmNOi8WoLUxISd0XANXMgFYkWR+vYBMPjV3
         vSxP1t39DPRKuUqUW4eyDVb4UAdYO5NIYFdqzpcmC+S6U90wKs5KKdMGRmVsKZs8Nu38
         O81iFbr58oswZa8L8LXO6hcqR70s3vBEB1B4sod06mbBiaCzUhRPv7c3y50yXhju8Tb3
         rXFw6RDg1nHoEw9N+dgD4eikVkGfUu2SGH86xc3awwL1Flj5K+UUit4Igd5r19Tj7B/Z
         ffrQ==
X-Gm-Message-State: AAQBX9eD4PQpXqDzupZILDA2f3s88Xmc9XBOxLRXKl1fN4HUvM6485Cm
        DKeH2jpyjPmC5r5XohhVAigT9Z59yWTE5UZwXRc=
X-Google-Smtp-Source: AKy350aPGcCEuUP5Uyjh64o89nV04rm1AS7tF5OJW/b9RkvrpFLg2xa8HXFH9aPX8y79TMAgdhsFgT5/jd6pBpaYw5o=
X-Received: by 2002:a05:6808:4391:b0:38e:a7e4:48fe with SMTP id
 dz17-20020a056808439100b0038ea7e448femr2812791oib.50.1682308950157; Sun, 23
 Apr 2023 21:02:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:2486:b0:114:da1f:fde3 with HTTP; Sun, 23 Apr 2023
 21:02:29 -0700 (PDT)
Reply-To: mariamkouame.info@myself.com
From:   Mariam Kouame <mariamkouame003@gmail.com>
Date:   Sun, 23 Apr 2023 21:02:29 -0700
Message-ID: <CABt-BZ60xomkRr888tYikE1apvEY=iV9Mrzu0-XzfyqyCvXxoA@mail.gmail.com>
Subject: from mariam kouame
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear,

Please grant me permission to share a very crucial discussion with
you.I am looking forward to hearing from you at your earliest
convenience.

Mrs. Mariam Kouame
