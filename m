Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03C5D5FD5E0
	for <lists+devicetree@lfdr.de>; Thu, 13 Oct 2022 10:03:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229658AbiJMIDC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Oct 2022 04:03:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbiJMIDB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Oct 2022 04:03:01 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BEC6146394
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 01:02:59 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id m23so1376379lji.2
        for <devicetree@vger.kernel.org>; Thu, 13 Oct 2022 01:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KeMi8W+p20zdR41YZoRj2EapY7imNsLYkAgQIQsIzqY=;
        b=fDEyqY5aPH9fJHn6OXHW8WqZ5wBlaXq9yCJ2NvXP8Myw7swnio1+eBK3ui6Y1fp+aq
         XTrEVcTjcKtxdNiqmk7A3ZDaBGD8v4zxtT1SwH/wvb26ehP2nyk3S4rkiY3w0OtuiWVR
         R7vCIlDP0YxrRGs/qtUWnt7cO7TR/MMaJNBCA2QaZAQq/PBqMvSTELYWKHB4Y1qxfvYz
         63qQmyfIKM/q03j+Qe6gE6ZLzPFhN4l7NZ5gx4v0WNBnVm6GlNmkNjAjcW1K15pUFjvD
         pZYbLgdmfYvqXFUJxhfQspAY98w0W8fuOaCbxCyqVuoMEzuwn71Txp8cJd9f9o1Ol6Xq
         zN5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KeMi8W+p20zdR41YZoRj2EapY7imNsLYkAgQIQsIzqY=;
        b=CY2CVzwbhAPTtT31T8vH+Mr72dPTrHXkOG6g8Kf8CdIwhlKWyQdMREP0qRyaB4fvEg
         9FWWrmwvmdAa+Gj2vuvK+UcVvQAWP1T2szzj8h3CNYavP0nQ19De3P9iaCIXtArSbp9R
         gbWJX6OzCIAvaDLLp+4uQj5dCTDWvhCtF1QmWJ/AR1fMWn6POUOSbxJ+3mcjpfzQkT2Z
         yxZd4QQtNqrXlV1uHznJ9qmwjgWQkKjYV4wX9dh0YXCJqZ1a3JuCBajcWboElNhF35Pp
         Q5H40/G9D6Gv3kcmb+LLpfYoBICs6hQclYGuknlna0CUXJ6ylc9pKqRT+nTQ/1u/YLN1
         BMlQ==
X-Gm-Message-State: ACrzQf3eYova71rw86LRBmJ4LEKsEFqzZQxMXA8m1Ulw65h2Md32G+eZ
        xhuo/U7z3Qp8cF3PMXcU662etvPfMotkvNDCX38=
X-Google-Smtp-Source: AMsMyM7ZEGhybKvIxOUg8fAnBaxNIgQ2KeCFh+qyIXpLjvlM15ny+uAOJxvOIFVKxfBIBz52dW4h0AfU+QHNfn6PWWI=
X-Received: by 2002:a2e:981a:0:b0:26e:923b:499d with SMTP id
 a26-20020a2e981a000000b0026e923b499dmr9754588ljj.321.1665648177453; Thu, 13
 Oct 2022 01:02:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a2e:bf0e:0:0:0:0:0 with HTTP; Thu, 13 Oct 2022 01:02:56
 -0700 (PDT)
Reply-To: seybasaniel@gmail.com
From:   Seyba Daniel <kooohook3@gmail.com>
Date:   Thu, 13 Oct 2022 10:02:56 +0200
Message-ID: <CAO_mAxxspzBTGc9-4izHEwKEN814D3VhJpaabMOGREKtXAuV7Q@mail.gmail.com>
Subject: HELLO,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

I am so sorry contacting you in this means especially when we have never
met before. I urgently seek your service to represent me in investing in
your region / country and you will be rewarded for your service without
affecting your present job with very little time invested in it.

My interest is in buying real estate, private schools or companies with
potentials for rapid growth in long terms.

So please confirm interest by responding back.

My dearest regards

Seyba Daniel
