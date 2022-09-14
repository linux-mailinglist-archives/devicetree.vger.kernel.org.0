Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C57205B910D
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 01:41:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229650AbiINXlq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 19:41:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229479AbiINXlo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 19:41:44 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A21E4361B
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 16:41:44 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id fv3so16105634pjb.0
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 16:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:from:to:cc:subject:date;
        bh=ShE51VUQ4axb0Bz/NABdTBjNwA+Qofa4jx9r0eRkBes=;
        b=Xfzv5PUoCPafwSSq3ArV+C8VFypgoofRPgRcYJj8l2DXRVgjA8K/15h6yZ0/LRppTE
         /K2mqs6bi1Da0RDDBteCpgtg0G61jhw73pjYVp4o0D1fMTxs+FY/Zaj9SZ1ttRBmZKYd
         RJ+uLmQk1sqVLOkfWxhV3wgfHmoQdalq53Pl2Fjedb8Ifn7cZahC2uuwH+W0XB5ztZ8E
         0bx6IpWN3N6+Ins5mwDh2Ox12Xbn7UJ5Ig0ZFQSTuDWyv0qtnJYSti1pBjfbyKvfx6lJ
         uvnZR1XbufqSLxLvv6fuLeAGoN69HdghqOrK90c/D9WdjuPB97Wai17z/T0R+BzWO42V
         IlFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from:sender
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=ShE51VUQ4axb0Bz/NABdTBjNwA+Qofa4jx9r0eRkBes=;
        b=EuD5p/4bHmp0mf7lo5/BqyP4o46GL/Rbbp9Po7+eOtW/oUccwXIY5FAyE9uUP1ITgt
         vD/Br+jlX71H/vgneGiDn42lebVa7c6ZyB1NWf73rqKdEQm+4euuUJF1/Fr0TE4uQW1L
         lpIK0M3MZHokDnxkM6+pjIkqvgzVynCaEQrT5IcHWKVZsFJ3ab707oRiWCGiTslkR4EI
         RSk+BmZ4ZP/twlfwxngkM7Pxv1lR0gkUsGhvj1z0cMUmnQ81OT+JrL/UKUd3Al595E+m
         daZPnxz4ArX8n2/EVDZpDJ/I+aIdYeC9Oj4s3As0LerJe8TyTv1WwhQjqJiB58QX9xpU
         tYEg==
X-Gm-Message-State: ACrzQf3av5mRm+TpJkrSM1BrMeQgpf/7vUXiPPxWxW2I82Oaq61FPM4Y
        NnuIN0PO6ZlJwUjGSS1SWVrAkHahbBdX1BcxDk4=
X-Google-Smtp-Source: AMsMyM6HWop/Ake7tESy3VuM+mG5ZHBL1wBlhQ51TJjfjxWktcR22TNhgI1byhEdk3jTuFYGwiXNuqEUAjkUFTpyTkE=
X-Received: by 2002:a17:90b:230f:b0:200:a5f3:d60b with SMTP id
 mt15-20020a17090b230f00b00200a5f3d60bmr7490954pjb.215.1663198903891; Wed, 14
 Sep 2022 16:41:43 -0700 (PDT)
MIME-Version: 1.0
Sender: koffiazonkosename@gmail.com
Received: by 2002:a05:6a10:bb1f:b0:2f4:5567:20e4 with HTTP; Wed, 14 Sep 2022
 16:41:42 -0700 (PDT)
From:   Attorney John <omaralaji51@gmail.com>
Date:   Wed, 14 Sep 2022 23:41:42 +0000
X-Google-Sender-Auth: GtXqyXLg7nAI6Rq76XX322a43Z8
Message-ID: <CAPTxizwOKi_v_ruNPaDjV2iKCmpn9gZTA4m_WX=ThbdpseKuTg@mail.gmail.com>
Subject: It's urgent.
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Greetings!!
Did you receive my previous email?
Please reply back it=E2=80=99s urgent.
Regards,
Attorney John.
