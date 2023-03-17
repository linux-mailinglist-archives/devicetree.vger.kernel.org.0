Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 486126BE971
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 13:38:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230263AbjCQMiW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 08:38:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230205AbjCQMiV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 08:38:21 -0400
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com [IPv6:2607:f8b0:4864:20::943])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AFE693C7
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 05:37:51 -0700 (PDT)
Received: by mail-ua1-x943.google.com with SMTP id q42so3219781uac.3
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 05:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679056670;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FpAmY+8nZPor0UgxrJMXlJYEthEaDzCxtvrw7pFZ6fU=;
        b=IllJSb9Z2IwXLfqbLmQpVBsVUUArgB/Xfah79qtfJq9TG0MQh4Tiro9nR6GlNr87/I
         cICmhPTeymLyAnvMXb34IkDvSaB0+9RM9Os9MhNoN0TTlKvriqe6+jwn/0+ejE1SvPwN
         VR9vxEvPNFlJuBWjV3q1KVMfbtGG520aVFHsJTjpS61xr9H4X6i90G7GNqkPT96/aSmT
         s5aktXl5Z5bmTJtSHLxzZT0INqH1Dv4OEF7WxHrtzgIWuDS/yqc9Orn8ItCX5qWrb52f
         h5G1c3MIdsqTT0/YErP0g92RkLXvWmFCoNTdt2jyk+xmUqxWaXIz2Wj5EcHh97ptcGD3
         TR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679056670;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FpAmY+8nZPor0UgxrJMXlJYEthEaDzCxtvrw7pFZ6fU=;
        b=Gd3F1Md97xlhJZlhnlK9Q3NMPN2SUhBaQNXJyl4Izh02/TQyGTJm9By0BNOSkFbqWk
         bPeSxWCUt3f4tPYojsWWRgXR1RtvTVTWbvLcAvI1TJwGR70EQtNSP9ujNThR7o3dym6U
         p7/ySMWl0S382qMzpYc5b1kwKluIu8z4bNhJlrksD66Ofh0Yw91h6YFUF5RuCj9uwgdq
         1b2uVaWwM46Gms41bIWTx0kLqZkcKvMle+y3fBQ7UmhE4YUBnRMIorvouyMOkK9pmZDz
         5rxCaf78kTJNR//GtaFkbNKSiwLo7dwFFHsxg9hiMDizOJb7KBREwa+DSi+sQJIk/OK2
         9WFA==
X-Gm-Message-State: AO0yUKU5ERtPVBZZckZ5jjXl50/enC46xWlppxWA1jCpqP/2m1JOcWHz
        WCa6QJ1n97dvphbJIZYmvx1JD+GsNaGfjgIrCFc=
X-Google-Smtp-Source: AK7set9iuPCQXVxPyos1sapsNjaDTbq38aF+HuDOK195uvm0hTb9N+6wWcRL4n6w8/ERDIwWfXyy5mky8OOLzhYFz5Y=
X-Received: by 2002:a1f:c847:0:b0:411:ff57:d3b9 with SMTP id
 y68-20020a1fc847000000b00411ff57d3b9mr27100675vkf.2.1679056670073; Fri, 17
 Mar 2023 05:37:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a59:c3b1:0:b0:3aa:b10d:8896 with HTTP; Fri, 17 Mar 2023
 05:37:49 -0700 (PDT)
From:   =?UTF-8?Q?Ma=C3=AEtre_Akakpo?= <barristermaitreakakpo@gmail.com>
Date:   Fri, 17 Mar 2023 13:37:49 +0100
Message-ID: <CA+yp9HPOjyV59kVzrc0Lyvs2AuGrFapTNOajZovDeWtrt1_nYQ@mail.gmail.com>
Subject: Good day,How are you?
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: Yes, score=6.8 required=5.0 tests=ADVANCE_FEE_4_NEW_MONEY,
        BAYES_60,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        FREEMAIL_FROM,LOTS_OF_MONEY,MONEY_BARRISTER,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,UNDISC_MONEY,URG_BIZ autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
        *      https://www.dnswl.org/, no trust
        *      [2607:f8b0:4864:20:0:0:0:943 listed in]
        [list.dnswl.org]
        *  1.5 BAYES_60 BODY: Bayes spam probability is 60 to 80%
        *      [score: 0.7846]
        * -0.0 SPF_PASS SPF: sender matches SPF record
        *  0.0 SPF_HELO_NONE SPF: HELO does not publish an SPF Record
        *  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
        *      provider
        *      [barristermaitreakakpo[at]gmail.com]
        *  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
        *       valid
        * -0.1 DKIM_VALID_EF Message has a valid DKIM or DK signature from
        *      envelope-from domain
        * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
        *      author's domain
        * -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
        *  0.6 URG_BIZ Contains urgent matter
        *  0.0 LOTS_OF_MONEY Huge... sums of money
        *  0.5 MONEY_BARRISTER Lots of money from a UK lawyer
        *  2.0 UNDISC_MONEY Undisclosed recipients + money/fraud signs
        *  2.5 ADVANCE_FEE_4_NEW_MONEY Advance Fee fraud and lots of money
X-Spam-Level: ******
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

Good day,How are you? I'm barrister Akakpo. I sent this letter to you
a month ago, but I'm not sure if you got it and I have not heard from
you, this is why I repeat it. Concerning my several unsuccessful
attempts to find any of my late client=E2=80=99s relatives, a citizen of yo=
ur
country, who died in a fatal car accident with his family. I write to
you based on the same nationality and similarity of name to help me
retrieve the fund worth usd$14.3 million he left behind before his
death. I await your urgent reply for more detail.

Regards,
Barrister Maitre Akakpo Esq. LLB, BL
