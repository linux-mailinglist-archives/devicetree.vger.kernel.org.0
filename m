Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8279E7772F1
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 10:33:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234203AbjHJIdJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 04:33:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234202AbjHJIdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 04:33:08 -0400
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07E72E64
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 01:33:08 -0700 (PDT)
Received: by mail-vs1-xe2d.google.com with SMTP id ada2fe7eead31-4474c7fce20so277428137.3
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 01:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691656387; x=1692261187;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uXViNTriJbQzpB1eP2cfF6Hulct7qRDowcDtQ5M2ukQ=;
        b=rUWfM9QkccGSNUMQrlb3tH/3yezOZ4WC6McRRuBmi1Gi9fY3YQ+uZWD5iSgUbEzM6b
         HzVX1peABlc1hTKDnBF1DnzIi4Ad2wjjTSH2BSovx76dQrORrOpuyt76MbFUXOgiA17F
         Hy+p0gwg3fZsMVfrwZBpZ3b4mLORDI808G0xfW7035hqTFEfO2ygHv8Cdh3wol0D/gyE
         MX47za3VNvCPzewvxqNqDhG+3bdUB3VGjV4xWyxSm+DQYtcq60Qu+sO3F+BoSII0jt/Z
         abcD4+r8eq3sWzFfQcJaKMtx8v0CdoBsWbcSYumOL2L6191e83TBRRMgweVvnph69+g6
         G8Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691656387; x=1692261187;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uXViNTriJbQzpB1eP2cfF6Hulct7qRDowcDtQ5M2ukQ=;
        b=aAmoyW+HJgPxKY0tDx+DPSW9DMr4ftXOS40Ria4D6c6DSxPp04/Z+lFOginufD0Wr8
         c9QIoIHpXmM7ytrKittDovszikNPK2upDKAAra8uKQO1HetfyQQcpY2X2UIUCtROb1r2
         LG/ucI8z0LMO03r6fIZgkS9dmySuwekNCWFUAfCT61AZNNrChLxC2XPKJHLzTJfh2gWy
         kSLvCl+NdaiEI4XxI3qAc5L5phHXyPOpWHX+VNlC4cbaAnb5ucIX/GHiV2GE+yFzajFX
         1JNRm6GkqjDGWAbPgY1PljbjfSd/KLCrLaB7m0j2p0z8i1Rz6C4kIsGGPwPaZz4KLi80
         yHeg==
X-Gm-Message-State: AOJu0YzfC3KopuNS0p4ILSRS9hc5JcjnJY7HxvW3puZ5+m/yIDclER70
        M8qar/2xXdYxydflg8WylJUeBP7Z6zDSUeE8y2ySJChTPSiguJMQ
X-Google-Smtp-Source: AGHT+IEvUhINzf+chFJudzkFhzeM8jsFYRpWbdSpmlcuOd9Pf+evwEQKhmXJGfqfPQx/9pmfJRwxiQyXhrA7nwsXOwc=
X-Received: by 2002:a67:fa56:0:b0:443:51a7:b63d with SMTP id
 j22-20020a67fa56000000b0044351a7b63dmr1050238vsq.23.1691656387130; Thu, 10
 Aug 2023 01:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <20230808090942.3109000-1-linyujun809@huawei.com>
In-Reply-To: <20230808090942.3109000-1-linyujun809@huawei.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 10 Aug 2023 10:32:56 +0200
Message-ID: <CACRpkdYgtw5nMGRrzLw1hCKDB00E3vfA3VS9kjym+RYMjQNoaA@mail.gmail.com>
Subject: Re: [PATCH -next v2] ARM: dts: integrator: fix PCI bus dtc warnings
To:     Lin Yujun <linyujun809@huawei.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, arnd@arndb.de,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 8, 2023 at 11:12=E2=80=AFAM Lin Yujun <linyujun809@huawei.com> =
wrote:

> An warning is reported when allmodconfig is used to compile the kernel of=
 the ARM architecture:
>
> arch/arm/boot/dts/arm/integratorap.dts:161.22-206.4: Warning (pci_bridge)=
: /pciv3@62000000: node name is not "pci" or "pcie"
>
> Change the node name to pci to clear the build warning.
>
> Signed-off-by: Lin Yujun <linyujun809@huawei.com>

Patch applied!

Yours,
Linus Walleij
