Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA33A4D0273
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 16:07:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237859AbiCGPIO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 10:08:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239155AbiCGPIN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 10:08:13 -0500
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14B9891364
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 07:07:18 -0800 (PST)
Received: by mail-il1-x12a.google.com with SMTP id i14so11757871ilv.4
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 07:07:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=CeuyqRrXNSdquVg5FveGWsvDvkTa3Q6Ik81MSfLVaZI=;
        b=jWG8wK1nsves6+PiPzBBkP9X0Ib2iIxhFNQsitJY/bhNPNZcLThy9swJPFepaPsFYM
         VvhT6VokdTM4Pslyf6HGT/ivLMAhSxxhautWexK0ujMnCYucIDXVAwplonxS4PIcdRH0
         Q35Wz3fPJBVRgWckwlFaU8vgkjI9sksOezr6sbCJ/FXAFGzyLmDIhebMmjm55AFvSHnk
         HF8ODxciUCbq/4jja2YtG9emNW6pYpRLZZ/a5tI7RjhFmu9CDnJq9omw1Jdt+KsyhnjU
         oXDegMTJ4FzVhDySGOShFmmGvebPM/OXRH21rEyExdH8sxwRlVmJ3yjvoeRGQw8+j0Xg
         KuCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=CeuyqRrXNSdquVg5FveGWsvDvkTa3Q6Ik81MSfLVaZI=;
        b=417uguIrZkCxceMDm94w4nXiTL6w9kT6nEH7CtZZqVFQe+zg9ux/E+EwknehWA2tZG
         +4ETBgmFRB4s3j3PBh1BsqfCupVSy3J3HAf24oZBLl72hu+PRca5c+rvHo6pgVUhuhhI
         fzSBMBfSkpLhDDs4umFoVgmv2D5DcWzoAYualy6JUH3h2XKnn0h4L9C73ZEIBaMY0TvL
         P9CTlpjZYgSQZ718FM5cQV5un5qm+Bs8um8hdej1kq9EPMlBp5A3EAmqaVR+JYl6ARgm
         OeVMYsaWEdCJZ9WryyCBhdjFmTezHjcBv0SgG3RwnDzu8EtjB1GVn45/h83cKmkN7YU7
         vFgw==
X-Gm-Message-State: AOAM530WpeGgR/d2dqx5N6sbHvG/mvrLT53mLi0jdctdfAf0XCuNefm7
        rNtrPfmsrDNNLT3IEUJFlVD9aP7cGw+jjqqZZtc=
X-Google-Smtp-Source: ABdhPJwQQT6YrOmogFXpxmTlrMqPoT8pVN6oP7Fgs/dg9pxfKuxYwmYQpRdiB3w5OxCEakSXea3Ce2aER6VEdQWnkpI=
X-Received: by 2002:a05:6e02:524:b0:2c6:3a2b:7004 with SMTP id
 h4-20020a056e02052400b002c63a2b7004mr7299937ils.15.1646665637556; Mon, 07 Mar
 2022 07:07:17 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a5d:8d02:0:0:0:0:0 with HTTP; Mon, 7 Mar 2022 07:07:17 -0800 (PST)
Reply-To: blessingbrown.017@gmail.com
From:   Blessing Brown <fredrickfrance2@gmail.com>
Date:   Mon, 7 Mar 2022 15:07:17 +0000
Message-ID: <CALHaDua5Q+WOdm4eUp2qAKzK7_n2ZtMTvdikkMukqdh=ofMrDA@mail.gmail.com>
Subject: Hi
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I'm Mrs Blessing Brown.I wish to communicate with you.

I wait for your response.

Mrs Blessing Brown
