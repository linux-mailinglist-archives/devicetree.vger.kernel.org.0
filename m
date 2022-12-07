Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4266646342
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 22:32:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbiLGVcS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 16:32:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbiLGVcR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 16:32:17 -0500
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FF705E3F2
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 13:32:17 -0800 (PST)
Received: by mail-yb1-xb33.google.com with SMTP id b16so15599581yba.0
        for <devicetree@vger.kernel.org>; Wed, 07 Dec 2022 13:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=cBEAHRQUmQbIelBI60mcdGrH2vQqqJhfYOv8Km35M8bxP8JECzdc6Tmjn3quFvE14b
         FHzTZWNaTCgsFofoxqvbxVXU4TNZkjsQy3pz++7azDlEcdJjk3DK2t6n/M9WxcnbKPF1
         xtM+i5qpMNQzQhL6q6OXvpeEseD7PhkxowLnYSKZVUEwmEmTHVr+QmE9OLgGipHTZUc7
         03SAldUyiEpaiv4KOoYaX0w6HTYkQH4G887y7LQdMVycPBalAydW1qOYGpyJbHne8n2S
         zWyADAOPvXaHC5o4cXcP7udFqeTywYEFFNFLcO+CMomfb7EhM9fUHMrHVjhliAMNVkxJ
         qV9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=DYIjQmhSZun5yKFtYlZ/AUufknalakvFYJuKXndRKORSaI1vhSqMGK0qHntEC7F9OK
         QrsEF/wCbB/xtRz/LXyGID4HkLHP/wUahutKvkp4eWBPSu9BGQHRFv3AAMU2eh3p847X
         FG2BNqIDwzGxvw8jIa8VmdJUDypFiUIHciyEudRu3gYD/ksDq5uBXWgKYuskaRm63733
         8wNeqp9U9kNY1Kn+f4hK8DOwpE5juCSIAulgjgOBmEikzdYzVm22OHUIM+bWmhxqBFy3
         gAO5tNX+AekZ6yGVdmiZIMLjoie7myEIldBBQaK7Ega+TAGTAyae43du6BRaXIOAGnYP
         uuMg==
X-Gm-Message-State: ANoB5pmLzhYdv6dAvp9F2neSlmQyweGVX0QkPvQLXMi9sqYIUEPE118t
        aRoLhL/GYZGd5l6ValR/hV/kKvaPEdsag4/v7bQ=
X-Google-Smtp-Source: AA0mqf7m/bIV41zxUFCCnh8WEkTndUuv4lpupE160I0tB+lSIWpvTYECHtY1dbaIEucmyPvLaAt1Uh1bkLKQrc8xBRc=
X-Received: by 2002:a5b:4d0:0:b0:703:7022:cb49 with SMTP id
 u16-20020a5b04d0000000b007037022cb49mr8035846ybp.50.1670448735805; Wed, 07
 Dec 2022 13:32:15 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:a7a2:b0:2ee:ec03:13c0 with HTTP; Wed, 7 Dec 2022
 13:32:15 -0800 (PST)
Reply-To: Gregdenzell9@gmail.com
From:   Greg Denzell <dgreg5440@gmail.com>
Date:   Wed, 7 Dec 2022 21:32:15 +0000
Message-ID: <CACjOjkWH0Yjx9rbNj=ah_S-HHWHekDV6VEGo_ahWDZWj5UJh6w@mail.gmail.com>
Subject: Hello Friend, This will remind you again that I have not yet received
 your reply to my last message to you.
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=7.2 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,EMPTY_MESSAGE,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:b33 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [dgreg5440[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [gregdenzell9[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [dgreg5440[at]gmail.com]
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        *  2.3 EMPTY_MESSAGE Message appears to have no textual parts
        *  2.8 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


