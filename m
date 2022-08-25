Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1FCD95A0F0C
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 13:28:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240285AbiHYL21 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 07:28:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230523AbiHYL20 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 07:28:26 -0400
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21806A8959
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 04:28:24 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-33dba2693d0so39401907b3.12
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 04:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc;
        bh=kncW2zoYdO5wqDEc9msMKDZoMpdAKqI3NmnBNZDVg9w=;
        b=lyzW7OeI2jijMo5dhN4JAzMEA+fRYJ+Ow7MqUyIOFCs/b8Xx4J6K15h1JDK5FFTjHG
         wbHrYlYr95d0t8SXhh/hfUImkzSkW5RtKxM4PD+0C+M2Reuv5PE3IYrkUa/Z+xE2OBeT
         ZiT4pAO0Yzl0zixJTrnbKC82QTP+rQUgvaay62gNfj6PzRr1cU4gKF5ca5Mpch2s78Xf
         BgF+SvBwYyG8wNvwJDSG0cCnFC2gQBuLeIfUwjfjXKOctF1OKS2dZ/pzbfbe+A5b5qkW
         8nPEiOFQLIiOiFW+sAJdlwo8dfr8MPFcEw8DvgCPzfdPZyc+7YK+ICJ6dgcXW5NRwKB8
         AGzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc;
        bh=kncW2zoYdO5wqDEc9msMKDZoMpdAKqI3NmnBNZDVg9w=;
        b=PCTjvDiuC/N9NM3m9amTw/Vwv3deHEV85af3SVYSVqH9A9+rlr1LrXdWifcXOzeX4k
         I4gDKdtV7/w3/LbxXHwbtkrVty2oaD1cxKcsP7VzlRb7M/RXxuf676JtAPjbRk3/mJxE
         LiGC8PAy1PAErkffwKbC2E3RUavlTsENr62PbO6qNNra4ShNH/WkfyoD/JK+7uIaIVY6
         6/M4zdBxPxasmQjok6klQzr2duQbPH1eOoqVuH2laD0fio/yz730zFNR9IeKsWmdyb4U
         FpHoEfMBoCHQaUmBVz+nhX1QM7YkWBx05s7+2CFm/h7ImPsiYGXjhp4w+h6l1NCcZWST
         9xXA==
X-Gm-Message-State: ACgBeo00MMjYgLgj94Od8upCOqRZm99tF19E5x4abFGIGJCpdk1BsL0x
        dFfRT8XGz9zrrJvkSc67ctv8jUYRJttOBFq8PjA=
X-Google-Smtp-Source: AA6agR62KvAescww8VNqJqGW3hhNZho561jn/FuKE2hdgobAp1qCRfwKpK/zAICB7yKLd+8qSoYqjUhQKpgUo8khSPw=
X-Received: by 2002:a81:138e:0:b0:333:5acd:9557 with SMTP id
 136-20020a81138e000000b003335acd9557mr3220695ywt.509.1661426903423; Thu, 25
 Aug 2022 04:28:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7108:4407:0:0:0:0 with HTTP; Thu, 25 Aug 2022 04:28:22
 -0700 (PDT)
Reply-To: fionahill.usa@outlook.com
From:   Fiona Hill <ahmadangela32@gmail.com>
Date:   Thu, 25 Aug 2022 04:28:22 -0700
Message-ID: <CA+d=AUYJuFMOyBf_wE-ysD9nVv2Xr8hkKYjf_4Wry-EhybwTqw@mail.gmail.com>
Subject: 
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: Yes, score=5.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:112f listed in]
        [list.dnswl.org]
        *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
        *      [score: 0.5001]
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [ahmadangela32[at]gmail.com]
        *  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
        *       in digit
        *      [ahmadangela32[at]gmail.com]
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        * -0.0 SPF_PASS SPF: sender matches SPF record
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
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

-- 
 Did you receive my message?
