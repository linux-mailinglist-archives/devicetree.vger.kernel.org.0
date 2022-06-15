Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D63554CB3D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 16:24:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347318AbiFOOY5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 10:24:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239492AbiFOOY5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 10:24:57 -0400
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 088F635A97
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 07:24:56 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id e184so20775884ybf.8
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 07:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=m0/6B+ZI7yo0LWxIckWnNt0KBdhDtWdQjkQId2wLCUU=;
        b=rIlNXD2CRCmohocx0jGUfx6WCJlJAAxujr7ifneFctCVn6xwYppYh/yQd6RHMxFRKt
         tfGIxKowBFPDASSlPOJKEsuRg0qsYKS84gA2CM8zIM/OJzOV1s/0/Si22CSMW/c3tJYA
         9eTMf1kHCEmRMa/YRySfsboC9+i/ueUqfraN9pmbbTIR7Qw/JcNo3clu9KZZW7S8mYO2
         EE2hLPRDLwBwyRpNyeI68lrXPs0qbQpzemt58GK3C5xINKJDLObwIrOH8rRU0KJ+RyYe
         ZbPyZzPyiBRly91ZJ6huP1TM7A3dlQH7XbxTWl3jZq9GfLyiEh7JMX2WKc2JJo5U4rPj
         0DYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=m0/6B+ZI7yo0LWxIckWnNt0KBdhDtWdQjkQId2wLCUU=;
        b=su7+uZ/OEyxLH782ytiGKAPpLfEtTIRwGP0flBLhVoWPn+BPcC1q8CiPqR4IhOEbcG
         s2j/C32zRrHNzafOhbzNOICIAzTrqGkAuihIJ3Bg+IM3mmsssAZ3CH/GJyyGOCnZm/pD
         NR68+qonz/qylp7g7WawHDhaWD/TiVhO21JGHKSoUDtl0UN5ngxMyQ9uN82N3EKqzHGi
         X6q5uAmNIupe6/ueVLpdaCfD1wS/GI/9GyWsALBQIHGqVRIbd35tRLKIHVeqcTQa/LVH
         EhXQtmrtbMz2v2MBzRkUt9kO9633EjJaiEBCCFtx/rEU/zr9EmWUrfeSpN6HjQP2+DTf
         WA4Q==
X-Gm-Message-State: AJIora8Dx1l2lYbiiFFsQGrk2ODcgaBjke+zLJGFlYW/SJI6N2T4DAxE
        aQ6lrH8rpsCwsXUD8KFITclT2LS6DOIASx9YRzVOiw==
X-Google-Smtp-Source: AGRyM1shDK5Am3UVbdvXd8vxBgewPS67j/GYf/VHSGVjdm00nEHLH+RBI7hmP3DrfnKVxyiy5Vt7Vs9naBlh1d4dFmQ=
X-Received: by 2002:a25:1256:0:b0:65d:6433:7993 with SMTP id
 83-20020a251256000000b0065d64337993mr92039ybs.626.1655303095223; Wed, 15 Jun
 2022 07:24:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220607121335.131497-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220607121335.131497-1-krzysztof.kozlowski@linaro.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 15 Jun 2022 16:24:44 +0200
Message-ID: <CACRpkdbXsugx7FEof3VeDVw+fOSfZ9hi1FQkNvc1Kfmezj+1vA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: sunplus,sp7021-pinctrl: reference
 generic schema
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Dvorkin Dmitry <dvorkin@tibbo.com>, Wells Lu <wellslutw@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 7, 2022 at 2:13 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> Reference generic pin controller schema to enforce proper root node
> name.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch applied.

Yours,
Linus Walleij
