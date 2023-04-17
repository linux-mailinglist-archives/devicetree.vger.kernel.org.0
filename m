Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACC1A6E4A59
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 15:52:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjDQNwa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 09:52:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbjDQNw3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 09:52:29 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8556269E
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 06:52:28 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id hg12so11167344pjb.2
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 06:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681739548; x=1684331548;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DhD3ly3gSahj7UfvzKr3+ihm2OV7+lDjhOszI2nQIPs=;
        b=WtlaFrTW1XAohIlkk2MGwT+ScCuhluobKoaXCR7lfqGD1O3a2p5w7/S6V6dgz7IY5n
         RcHLxju9Sgxof/Hpk7fVpC8j1zuq6TKDt2YQoE0lfAPSxxmL0hPfseM4PZqTkt61qZrO
         ACDDp9Elti/Ns1dmzkJ7SeAmtUPev4P8xXAlcg9j4WxPh5S0sKpYtuQsPJsWShyQNc9n
         XBBCG89WVuBLkE0s4f/7oR7rKmNBFvhOxcIS96DzyHEsWGdiXYDu6nqkPlO8b1bPPTDL
         Mu+MDeTKiKwAQfw8qmMiUsZY4FA1KoBRCXnbzndcPZOfPN6b8D9269hq5fSxuOVaVMS4
         Q7xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681739548; x=1684331548;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DhD3ly3gSahj7UfvzKr3+ihm2OV7+lDjhOszI2nQIPs=;
        b=V5CNuMr9fA2RxqwRDd+zfjSsP3beK3zsHegSqbzasVi0fRIxzIbzuLj95GwlubEZcm
         C0L8r8MbXuX7HDn3VfPQ7cRXaz3LCdsdni21nONd6TUfR5YjT2D66PdkP/v9dZbTFfFA
         T1ktkZ2z9K8nKVN32hNsujFb5fXfsotLIff2HeD8RDxzsh2lgCVcN8U8qRuU8NmN8C/f
         a44EhZ6wdcAvfX/dWMS+utscucFNFrnVJfENk5fbcRwDifkndBfxRYXN10+oluLocbcJ
         8Y1/xcyZCzEh4bxghU63D412edVL9R8BCaVIhpXl2v7/OGt9cuXkChSC2O5C3BrpCmXs
         Dg3w==
X-Gm-Message-State: AAQBX9eg9TqWxKuYA1soI2PNc8pHSNO45JbVhMJD6/xQwG7EjDu7BOS+
        4l00KliuQmkeA3wdHENzBU01XqkO0NdMM8+Nnsc=
X-Google-Smtp-Source: AKy350Yx0Sv2ILKZQphWKE9LJf3fn55lSsKErrABZvDwNUxz0c7hJm7gGqoqDQDqM07DzF4EW6Kk8mUZsSRsVdGQRPQ=
X-Received: by 2002:a17:90a:b318:b0:23d:3c7b:8684 with SMTP id
 d24-20020a17090ab31800b0023d3c7b8684mr15415545pjr.41.1681739548302; Mon, 17
 Apr 2023 06:52:28 -0700 (PDT)
MIME-Version: 1.0
From:   Della Wilson <b2bsecureone@gmail.com>
Date:   Mon, 17 Apr 2023 08:52:18 -0500
Message-ID: <CAKH4F6djsiCt9MT2K8FQZaCdXqc+k0DrjtiEbDG3GA9TNBFJgg@mail.gmail.com>
Subject: RE: NAB Show 2023 Attendees Email List
To:     Della Wilson <b2bsecureone@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Would you be interested in acquiring the National Association of
Broadcasters 2023 Attendees Email List?
Which Includes Complete Contact Details And Verified Email Address.

Number of Contacts :- 45,764
Cost :- USD-1,874

Interested? Email me Back, I would love to provide more information on the list.

Kind Regards,
Della Wilson
Marketing Coordinators
