Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E66304E8A8A
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 00:40:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236943AbiC0WmB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Mar 2022 18:42:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbiC0WmA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Mar 2022 18:42:00 -0400
Received: from mail-yw1-x1144.google.com (mail-yw1-x1144.google.com [IPv6:2607:f8b0:4864:20::1144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46EAD2F3BA
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 15:40:20 -0700 (PDT)
Received: by mail-yw1-x1144.google.com with SMTP id 00721157ae682-2e5827a76f4so130637347b3.6
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 15:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=VSEH8Q3Lr+Mcr/0lsL1VFPftJp7ALZ21MKYEz4sry74=;
        b=Q8F2K713LM79IX/VyTA+kqbHRhYtBdb0aBlULMdPRkKT26AN2pfJZ/7RryZgNLeQdz
         ShpLltP/dYVdi9VtMyqutUzybfu8I5BORkYFFkElQWQsvCBpoLbxg97Eq9EcremcDPUY
         aGXImSR744ku5A7rjCRgjMotQkZxSoeagkRGbm+6n3f2TKg+7nDv/rpCuo8C55W+cBmc
         p3KYUorHmKza2H64c0cOBU3X5racIliYN1+h0tbekmrW5DkzSzzJXAuA9oq51AHt0T5z
         YuCX2F4hRmfgWi9yRnJaEAom/y31arjUAT54PIgD3WiorECS7jqHstAjpGcwYnslbHeD
         hKEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=VSEH8Q3Lr+Mcr/0lsL1VFPftJp7ALZ21MKYEz4sry74=;
        b=KeULxwjzfcYhDqUBeG3mlnMbjD8sUtlsroKY3kTIFWGkXFWtE35dZNljuKFO4gQDK1
         eg4SIOjvjYJRWb2xBiTmTnKGnaw6c981VE+lVQ6pa3dQ7J1kYfr/fvGqQAXNzP8DBbkr
         qOhkZfptuVyRX3K/cxr8zqXllIQeILknv5W8uuvah7ULRHZpNa2sKHenUJCdpES3uFy8
         Z1K3xLdGavK+eMV/6ltDcZ9o20whzUSOX5RYY8dqAiG9/XiwsMZn3LaV5zMiW/dPv2ud
         W11xxFhuE4D1RjFNrgTC1Ci/MfRymhYq6SNNXqqUgrUV3SsYZAHENbTb/iooM24V/ngw
         SAUg==
X-Gm-Message-State: AOAM532CRAMPiH/dVPJ3hCjVlsMeSUGdyY6dPhuFRnCy6hJ2dCpz0O+2
        xnrctAkgU7+kmAIYl4d679avWTTq6l4/Y8tG27k=
X-Google-Smtp-Source: ABdhPJyPweor0P44fXGTDy8ZioDTIBYM9IpPj9WVmDfv4IRkpZrqEwG6oltfWYJbSduNR5k09isNv1Ne0WqpgpovbHc=
X-Received: by 2002:a0d:d84f:0:b0:2e5:f8f1:7272 with SMTP id
 a76-20020a0dd84f000000b002e5f8f17272mr22277498ywe.376.1648420819313; Sun, 27
 Mar 2022 15:40:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7010:8fa9:b0:238:704f:9d00 with HTTP; Sun, 27 Mar 2022
 15:40:18 -0700 (PDT)
Reply-To: christopherdaniel830@gmail.com
From:   Christopher Daniel <cd01100220@gmail.com>
Date:   Sun, 27 Mar 2022 22:40:18 +0000
Message-ID: <CA+Ao+MrjgN-RhtA5pJhiJa-sMuqd=peOHSekhEvFq5f=NDcPrg@mail.gmail.com>
Subject: Hello Dear
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=6.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,FREEMAIL_REPLYTO_END_DIGIT,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:1144 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.4795]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [christopherdaniel830[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [cd01100220[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [cd01100220[at]gmail.com]
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.9 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

.
I wish to invite you to participate in our Investment Funding Program,
get back to me for more details if interested please.

Regards.
Christopher Daniel.
