Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E92A9754DDE
	for <lists+devicetree@lfdr.de>; Sun, 16 Jul 2023 10:48:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229545AbjGPIsj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jul 2023 04:48:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjGPIsj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jul 2023 04:48:39 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE7E6D1
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 01:48:36 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3fbca8935bfso30545595e9.3
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 01:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689497315; x=1692089315;
        h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VAlw7dzSKHfnCSCBqIjoLWqepO5xuvhk0bi0gzGO6Fs=;
        b=ZWJ7933CUj+8vsrwUNy/oZ/TEcsrPVCnc05Vr9qvKC2J4UbnWrcJTe/SclhBIQUQO6
         Cx2Z7n8jnJoH9MqOODnlmgKJXINXDXzdyNxa5vk9TARzmDEJpo6wVoRLfQeTfOMXkek9
         pGJgjEwEwFBzQ0p7onfXmtbYkHWVaD8zaPI8b9C1deXIAHelvWwy1cCS31xrq5Z1dvVQ
         LcJ8NYRw81qpwm8lcfiS6HLP9J/R3Rva+ymSvam55WzRo+cXcJDzU7vgB33x+92K55KN
         HDswErQBew9ToGm9VdLe2LSXPOQ23m0kplGPIBxSKNiqaoyM7zpdbERomqBY3nvZd0tH
         6s4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689497315; x=1692089315;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VAlw7dzSKHfnCSCBqIjoLWqepO5xuvhk0bi0gzGO6Fs=;
        b=VDTsy4DPoUSI2fv2Ep8HfZ17yLSRlQXfI8IMzijHu9d9wqjXyf00hEgKYMrk58gc9+
         e6roEddr74iIRd16X6lvHl9ifbbV4sK375Rsz4Et+Hl2YLOK+zAyovz06mPqG3ZD1Pvy
         iBtR6aPBaARMPClf90Y3jaNozadFyL+M8SwMrUczqoPRBcXsgQq+/8NzB/LqIeT2N0oQ
         yMWcCPlcfNm+NJryfjn07+y9/d8595sR1XgbUwMtByW6nCDAD++Bo8gdtN5BQZm6hmY7
         yt0JF2SB/0rfDRMaNg2QwMZHzp7ZE5RyYP6SlCt4GYXuSrUGX/+vge/doTtlTC5S43kG
         ylAw==
X-Gm-Message-State: ABy/qLYp6QzUZEAJn72m7PpSg4ac2vNrL1GFVAI/nsZZxxM6+ENAJA7U
        7nPzSf/8lmJfKuY0sVpSp09z+1FjVwVz+Xoh+W4=
X-Google-Smtp-Source: APBJJlHGFuZPZuIKwSOsdtNfXxmPLDjyQajtuw4ybC27bs/tIFCZVkf3Jt61HPUTpe8MnPI2c4ZBr/mpP2gK8u0WUKg=
X-Received: by 2002:a1c:ed0c:0:b0:3fa:9590:a365 with SMTP id
 l12-20020a1ced0c000000b003fa9590a365mr6980018wmh.17.1689497315095; Sun, 16
 Jul 2023 01:48:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6021:930d:b0:290:2410:eb22 with HTTP; Sun, 16 Jul 2023
 01:48:34 -0700 (PDT)
Reply-To: mrslinzhang@gmail.com
From:   Mrs Lin Zhang <nasiratsefiu20@gmail.com>
Date:   Sun, 16 Jul 2023 01:48:34 -0700
Message-ID: <CADCWOpQ+9-cBUEmbyMqQiFuh3jiTf-DFc4qRbx5ia3oNd9mzqw@mail.gmail.com>
Subject: Re
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=4.5 required=5.0 tests=BAYES_50,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,FREEMAIL_REPLYTO,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_HK_NAME_FM_MR_MRS,T_SCC_BODY_TEXT_LINE,UNDISC_FREEM
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: ****
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I have a business partnership to be done with you,Kindly get back to
me via this email address: mrslinzhang@gmail.com
