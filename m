Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E49979449A
	for <lists+devicetree@lfdr.de>; Wed,  6 Sep 2023 22:36:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232100AbjIFUg6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Sep 2023 16:36:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229863AbjIFUg5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Sep 2023 16:36:57 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18040E9
        for <devicetree@vger.kernel.org>; Wed,  6 Sep 2023 13:36:54 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-569deb93999so240895a12.2
        for <devicetree@vger.kernel.org>; Wed, 06 Sep 2023 13:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694032613; x=1694637413; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=STyOOIzRzJURWtS1SY9yvyO/Bq171v8coUL3DmxDSzI=;
        b=nYriRoMYFLzZunSXun3ErzQwz+Pbh+r/ALo+WV5EJBbFFEihxnQbvOr4GKU6yfcljD
         INN8pAV17e2DVqEzIr+MNR2WmiZvnDasuX9ESN+g9W+4svppxaTokE5V2lwykGS6X7hU
         Rxe3bEz3Klk1DXe8hQ4hRZ9G2tP9qXHzp9iBFufsFhjcXhogH8WKe/J7m+i00gPeHkhq
         CbmlMTPv30Dk9nSP7E5oSnnkflkVptu+HwyfH8CdKDAp4ceBOEeUM/TajQmDImetvc4x
         +5eUDL83godiIphTYl8BsNQqiZzYBK/1QCcD1ZZn9CXlEWIftr1Gtss7Ps5RRiq10sZP
         X4vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694032613; x=1694637413;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=STyOOIzRzJURWtS1SY9yvyO/Bq171v8coUL3DmxDSzI=;
        b=U+V2ErVHGN39T0vcVFPAWXazotMqSej5wTL48Vj5ytq8cVrivbJbo1tr8ej0KVx8aD
         658garGCoSiGQ7xV4zcr4DxhEVJk9CcDguaS9f+Fw7Gu1b/2ukrTB2IKHyE7IVhBs3ud
         v3w3WCS0h3ReW2bnTCQVeKyZ0srwopdt2SQeWm/DpNFvC+rVM96+qVwBGAIp+Z9Do8VW
         o1l0FvRoPiDI7XqEkZf+6uDWAKF+IxAsLNdcjzi6U/FdDauZ+tUlt07jM4if40Qqh+uC
         LfU3llcYCdMUhY9KI3FZhpaAhTciU+wVtR4n3LMdJH8jzdi8V/gfaCDRKil0KsdhYsqj
         wiUg==
X-Gm-Message-State: AOJu0YzP7D0pBa8+QCk7jxz7JW4IdlXyoyHXfGg9Qs3WeSdmcxRQSKGE
        YYfyj5jpBmTsz5Ny/gltWxOm5kZmMm8mBDDfpGg=
X-Google-Smtp-Source: AGHT+IFCSiE4xOTR1ZQVf5Ms/FY4FSEWVgjgaRmLDC5tsshGZY+331Fcqz3Cb8g2OjNW2igxXWzlZFA9LD5au8f4LWo=
X-Received: by 2002:a17:90b:4a09:b0:26b:9e2:1298 with SMTP id
 kk9-20020a17090b4a0900b0026b09e21298mr13152114pjb.11.1694032613412; Wed, 06
 Sep 2023 13:36:53 -0700 (PDT)
MIME-Version: 1.0
From:   John Andreson <onedataprovider3@gmail.com>
Date:   Wed, 6 Sep 2023 15:36:41 -0500
Message-ID: <CABmy1TJrU2PjmBQW0-kSWNzd6Yb1d1Dg3D6bwt1Zjc7c+BD_sA@mail.gmail.com>
Subject: RE: National Association of Broadcasters Attendees Data List 2023
To:     John Andreson <onedataprovider3@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Would you be interested in acquiring National Association of
Broadcasters Data List 2023?

Number of Contacts: 40,198
Cost: $ 1,818

Interested? Email me back; I would love to provide more information on the list.

Kind Regards,
John Andreson
Marketing Coordinator
