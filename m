Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16A99535929
	for <lists+devicetree@lfdr.de>; Fri, 27 May 2022 08:13:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232628AbiE0GNt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 May 2022 02:13:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiE0GNt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 May 2022 02:13:49 -0400
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B30659BAA
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 23:13:48 -0700 (PDT)
Received: by mail-io1-xd30.google.com with SMTP id y12so3707977ior.7
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 23:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=33H7bzlF73boyoKARvolMJlGymprQ+hHPrvlaQBxLsY=;
        b=V6BzOFEsAphpPbXXLMRSX4b+d2DpcAKSVUrhFmRNoRwYxUdcCdKgH4fXcFOQS2ihSZ
         5LICqjD8B/B9hUebPvUjuP6dWT1WBSNFg5BnE6OIw6ImNx5PFi7iNnpdmErwhTywa3Xk
         ybGOxi+nqpw1/5YE2a9Adhx6zZF/fOQ+yZMUroGEQ/FJMCOKQxnoUeSJGumg2ocOZR4t
         WdgFvARDg7MUGlc6cevZ/7d7VxltNvIIuX/jKeeaNP2OiGBQ+xE1SGM1rjg+xDVjViUM
         VgDjYlt6EQychhEBagZVFWD+OudaTTIJQ6y++Q0Na60E35cJA2F0e0OQZB7Wyws1nHMR
         UJUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=33H7bzlF73boyoKARvolMJlGymprQ+hHPrvlaQBxLsY=;
        b=ZdBd741FbAzsMYj3uO0muNvErYRY3vcOxgeRn8B/HD7KJLuJFto1LINjf0gC2VtPXH
         NbAbDyR53F3qmrckIV9CSyHgIRPJ2WSHQaDfV7ZMol8R+nkr2Xj5mXj05vTD1+t0IYBD
         DhjCi/AcPpDt3VJ0WKdraZfePvhQzsSkTUkMkQtWlZ8a+2fpo3KXcQ2XR4erYMKWgzq2
         oK95V/PloGpumkzLXI/1tI1hHq7h64vMjllx+gTj4KpPMT2NAvra7SqL0tnIHkSQASOt
         TTEwEEVcqdwUdSk4dGhGjjuC8L2sqKZ+kyCtsHQBbsbCDDtRg+Qol41j4mQz6nxCT2sT
         pyJQ==
X-Gm-Message-State: AOAM533lQ1ujP/5dbfe2zvKc0WpVC+b8SuuZuSyjlEJJhUGQqB63Ebai
        1w0jky+acJt7n0OaEOoJ3TX+qrLwVeU3g1ZDDmg=
X-Google-Smtp-Source: ABdhPJzNp/+iZO83+CnAlGRonFBbQnzkfUAPF5lORgwXob/ppfDkGNU5PfcJhy6fMhtNrSwKgrWnUpEdckPalbApLmw=
X-Received: by 2002:a05:6602:27d4:b0:64c:7575:34dc with SMTP id
 l20-20020a05660227d400b0064c757534dcmr18124871ios.158.1653632027570; Thu, 26
 May 2022 23:13:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6638:388b:b0:32e:cca7:1993 with HTTP; Thu, 26 May 2022
 23:13:47 -0700 (PDT)
Reply-To: IREnnewilliams@gmail.com
From:   Irene Williams <lori.robinsonnj@gmail.com>
Date:   Fri, 27 May 2022 06:13:47 +0000
Message-ID: <CAD13ymYjr5JHLAg3Op8ceMV1S8GEo2066+RPjYqrxjBjjvQ7GA@mail.gmail.com>
Subject: Hello friend
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,FREEMAIL_REPLYTO,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UNDISC_FREEM autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,


I wrote to you this morning because I have something to tell you, please
let me know if you read my previous post today.
