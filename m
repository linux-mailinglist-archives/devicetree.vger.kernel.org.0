Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A03B573E2E
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 22:51:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237242AbiGMUvW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 16:51:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237203AbiGMUvV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 16:51:21 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7F7231389
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 13:51:20 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id o15so99140pjh.1
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 13:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=h0ZslgqQ94UM3iGDYCZGEx8ZwvbYHY5ZrQARiO/Kpbc=;
        b=BWUcXaQcIraum9Ultttqfa7/nbUy/cpnAM7wLOHOwlMOCnM1qN29UoSLad4NiThAVu
         BkNFcIr6PEx2NuDi4UJHpkB10PR3kEQivxIiSy+JUkm3oFrgiVSvZvvjlVHKDLWvG2yF
         Bw2nGISWNwwEi1JhYfgdIij3rDbmrG8r5ZLoDNm816qBR0c56P24QlGxnGIb7hLZbTQx
         mPC8jNv0lvsHLQzjuEtPkx0WfdpLQg97LhBxJnLF5G871/P9z8nXWN/nXrEKvfw1LvXY
         sbOILyOMbe+YcUB7mjWm++bMRNbLa/laYM5c1c7xH0/FTGehXmrhy02X4g5qWLJU+Ytx
         R2qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=h0ZslgqQ94UM3iGDYCZGEx8ZwvbYHY5ZrQARiO/Kpbc=;
        b=LGGVPYl59aXGgaX3ta2HE4/BExd6l05JtArlyBLobNB1cCdwZaDC15XMvFvU+f7fvH
         +yjejRO1z1ErSUqR42+Y98ceaERkJ/av3eY1dGraZ3P3Cq0vj3stq54Ie/KeLfK+T6Zn
         1qHqaK0V/UkDVpi/w2Sre16OZR9NAtWP5bQSbwjKBwkfyWzPrRPSoIpL3249ePWrcUDk
         lJeJ3eAudhFIkmM9HMEKCNNh2ZTr8XnHbVoZNt2ExtRAWVEcSH1PoN801XEQ+HO4fLmM
         cG2029LZHmaMtyyeSOt+80dtz7Jct7NlLnujZ8qqvRiPXxUfNCO3wMO4wJcIRoLQ/tie
         MxiA==
X-Gm-Message-State: AJIora+hl3i5GltDoTg7HapMXOjrQ5wVpOMrPwZLKBAtgNHNMLCNFUDS
        D+zkchUnLoCAw+uCmAXWwtDSx+8KsmCypfQmqXg=
X-Google-Smtp-Source: AGRyM1s6fG/eUS0p4uEW64lATGuEyw1X7ct54zVBI6agBw6KmzNJiceYKuOKS6J8NCLnPNtbnFMqhPabThiWjvEmN/w=
X-Received: by 2002:a17:902:8a8e:b0:16c:66bf:1734 with SMTP id
 p14-20020a1709028a8e00b0016c66bf1734mr4904237plo.161.1657745479956; Wed, 13
 Jul 2022 13:51:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7022:626:b0:42:c3cf:981a with HTTP; Wed, 13 Jul 2022
 13:51:18 -0700 (PDT)
Reply-To: lilywilliam989@gmail.com
From:   Lily William <savadogoidrissaboursouma@gmail.com>
Date:   Wed, 13 Jul 2022 12:51:18 -0800
Message-ID: <CAA6zzonfr_L0do0oRPEgZRxsxei5EkRut=Jj1CtVtCcpkiH=Zg@mail.gmail.com>
Subject: Hi Dear,
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        FREEMAIL_REPLYTO_END_DIGIT,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:1043 listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5000]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [savadogoidrissaboursouma[at]gmail.com]
        *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
        *      digit
        *      [lilywilliam989[at]gmail.com]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.0 T_SCC_BODY_TEXT_LINE No description available.
        *  3.2 UNDISC_FREEM Undisclosed recipients + freemail reply-to
        *  1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain
        *      different freemails
X-Spam-Level: *****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dear,

My name is Dr Lily William from the United States.I am a French and
American nationality (dual) living in the U.S and sometimes in France
for Work Purpose.

I hope you consider my friend request. I will share some of my pics
and more details about myself when I get your response.

Thanks

With love
Lily
