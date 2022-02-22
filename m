Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88C0B4BF855
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 13:47:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231995AbiBVMsJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 07:48:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbiBVMsI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 07:48:08 -0500
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8405B1285B6
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 04:47:43 -0800 (PST)
Received: by mail-yb1-xb32.google.com with SMTP id e140so40769669ybh.9
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 04:47:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=hTGHJaB41/Hd4IfiC8eiTpep59F8i91dCxDfF/yHri4=;
        b=XB6OJrMgTx2Tt+SWSwYeUqhvi8Yx7qsTbhgp3bW1cDVTpaWN2yoiEk1CETXZugw2Ju
         8xnBa4TRD9QiN8odOay3UYffVNtJ1U8vD2x61H5oAbbrWl0ZjoBbvb3Jg0l6NHVWdllp
         7orRZvkmuyXmyjWhBp5J91QmiX0YLOC8tNCOkdMCDjzLsmv0Ih0xc6WxD/4ly/tjx8Ra
         4pD5JsbdGadN6q7QVsvUG5sE+koQtHEdNqq6/+vZe7FFwJVH8eeeHbqStxLLK6E+pnfb
         kcEmIiksEvxRvi0eSWXY53tQxIh1xqqjLlPLVx6VjuMT1bu4y/H9rS9cSIsa9tsR4kuU
         N2yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=hTGHJaB41/Hd4IfiC8eiTpep59F8i91dCxDfF/yHri4=;
        b=WLmI8pxvn3UIGPO75o0Zjm/MXp9tjZCchaaVQX/8YhcKkn1QKDwwnWgcunghIxxTiZ
         RjL6zso+CcQx1ubhPB6ojgrZwIeYSEPSkJoY6qv6hUYqYS+i3bISOPU8bmk18Kq4hCxF
         DszbJRIxor3RYAKp9aDPLOsPm940wVWW5DvAHOs685jijL2po4JzY5DhL/ClH8YOurzz
         Aq6zcnvVkzwXYplse69SWhmX0k/OF5qWT8dlAIsh9Irs1OwZ6jKSlnmIMcah99kWiCHV
         Ad+KA6U4zOQl6FUNeYET9lw/J1q+l2TUKo8WjQqiDBs2E1Jrp4ZiUET6A3Kif55vKH7u
         YNWw==
X-Gm-Message-State: AOAM531pehRGkHcf6Z163P1cqxuHbVDlwLf1od3VlxV5EgljX/eFG4Qa
        nZXxIuFRRyFIihKI/CMcYQRr28E+2GoCV+mXZa8=
X-Google-Smtp-Source: ABdhPJyeUkMs0IwjGcFtjUCYnjA7Wt5jL31B2HEE5ZpKxu46kiWKlAN3fxx2EVc+5j0v61Z9xJJKRfSjnuT7Kow+oIo=
X-Received: by 2002:a25:4cc3:0:b0:61a:8a69:de05 with SMTP id
 z186-20020a254cc3000000b0061a8a69de05mr23490626yba.638.1645534062674; Tue, 22
 Feb 2022 04:47:42 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:7010:3e19:b0:20e:6caa:bb5d with HTTP; Tue, 22 Feb 2022
 04:47:42 -0800 (PST)
Reply-To: gisabelanv@gmail.com
From:   Isabel Guerrero <ayikaekue1@gmail.com>
Date:   Tue, 22 Feb 2022 12:47:42 +0000
Message-ID: <CADeH0HtXxRnpYrO2xwaAkXx0--ZG9RBFS5m2RV6SFOEt=BtE-Q@mail.gmail.com>
Subject: Hello
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
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

Good day, I=E2=80=99ve not yet received your response to my previous mail.
