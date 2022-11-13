Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B090D62709C
	for <lists+devicetree@lfdr.de>; Sun, 13 Nov 2022 17:33:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235144AbiKMQdy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Nov 2022 11:33:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233792AbiKMQdy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Nov 2022 11:33:54 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 357F82652
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 08:33:53 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id d6so15627573lfs.10
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 08:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0+PAI4rgqgu8lkz8iluiDX4+RYG6mJwQ4g48BRbmTMI=;
        b=JYHCOMmmU2cfB4TnyzBrBs9SJMYtNyEFDD/jM4czeWivjclBsDPDtq1dktcgWoF3eo
         ZTag/ZMLteu8IWqOF5Zm+JE/gP2n6tsnd7QxKIsaDJHSyceIgU8HJVtwLrfPyBOEv7ms
         SVwaSlClbIrs8cT+3dNpzcouvH8Bk+rjBu7wA5A5N8xLox70NyCcPcirrBSWWoX8XUNn
         y2qfaFYg6Ia7O1L9WMx1/0IebAV644KDfhaPIPM+CrLJOOOX8L6eO0lTy9S97fuIecTa
         yjyX11vMQpPRrADrROO7V4bpZoDIybwFfoB06t0cqWZfeuF+mV2oenJtgxFYT+q/2kaD
         N6nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0+PAI4rgqgu8lkz8iluiDX4+RYG6mJwQ4g48BRbmTMI=;
        b=p+keD9Lrgm9zMwQczOHAL60I4dzmRqoDCff8tXurGL69vDvtRWQ6379JIici7/qSkx
         YnabJtB9CZOvmxn7JSDkYz9RE7wBdHZlOBs66gbNiEJXVPjAyEoASzthljZoeRxJFgh6
         Qu7v9NPG+nVsEfF9dq83JlpFIqvhmxSvBUkPdVAHx4bp7CS2TySdr2fwpc62FQuQroi6
         C1v9bCFZPB6YW/dw61xp/c6SE+A9dnh3muF4x037Lx808p0Ige/8PnAUKspADdH7u4xN
         2LirZzKSrGNJmhiAgV67xC77uatZ1i9SozxR3HwXGoGKOdwIQVRsd7FEZSqZMMTulF4p
         B5Hg==
X-Gm-Message-State: ANoB5pkzZnYUc2I8sUDJMwjtiwRkWaTMSSLxiFfT0UUfMz+PXVj7p4fS
        0hJMIFB/HiKxWF3aVKhUOw3fAzN9TMo4fO/qNHo=
X-Google-Smtp-Source: AA0mqf7IxInBHvQitkQKHK8opHW/VUjiGL09rzpk/6hVgy6qSt8P3R53/V7cSN/EBWpvDz1RD2+th23ncl2bh6n9Zy4=
X-Received: by 2002:ac2:4a6c:0:b0:4b4:686b:4f7 with SMTP id
 q12-20020ac24a6c000000b004b4686b04f7mr2973650lfp.256.1668357215193; Sun, 13
 Nov 2022 08:33:35 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a2e:2e1a:0:0:0:0:0 with HTTP; Sun, 13 Nov 2022 08:33:34
 -0800 (PST)
Reply-To: illuminatiinitiationcenter8@gmail.com
From:   Garry Lee <kembabazicoleen@gmail.com>
Date:   Sun, 13 Nov 2022 19:33:34 +0300
Message-ID: <CAEMv-iDC-vPym-U5nF--u0KUOSc+KhtObyv1mWD2jQD7pabgSg@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.8 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_FILL_THIS_FORM_SHORT,UNDISC_FREEM,UPPERCASE_75_100 autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

-- 
DO YOU WANT TO BE RICH AND FAMOUS? JOIN THE GREAT ILLUMINATI ORDER OF
RICHES, POWER/FAME  NOW AND ACHIEVE ALL YOUR DREAMS? IF YES EMAIL US :
MAIL: illuminatiinitiationcenter8@gmail.com

YOUR FULL NAME:
PHONE NUMBER :
COUNTRY :
GENDER:
