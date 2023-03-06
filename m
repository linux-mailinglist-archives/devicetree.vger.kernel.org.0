Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 800096ABA3E
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 10:45:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230147AbjCFJpM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 04:45:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229528AbjCFJpL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 04:45:11 -0500
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com [IPv6:2607:f8b0:4864:20::929])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AFD710AAE
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 01:45:10 -0800 (PST)
Received: by mail-ua1-x929.google.com with SMTP id l24so5961445uac.12
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 01:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1678095909;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GKoFWJJzSudk3nwRzBdKY9XPLk69RDQhGQ1+c6jaE2w=;
        b=Jt+t7xzqgKO/SnwFDFBrMQVqKg4vkZ8v+66kRuYjaxIodjiBTMtEkmNBw6XQrbQeGF
         1XUJ0E1ZxMsrReSl56g4sTJ/oEv6hKRojODN1rLZT7OKr2oblJvvOsGcs/8pPAuMTKwL
         6bXkLGyO0y2gGM34BwAeWhD1P/hY8iT1MiLBKR3NKw6oNh4GhstX4hXxjeMok6vUibGi
         a7xRaXu0aQstZEdmNLJIzlznSrYLeqyfHnhpgq0RR7CiNrkMA/qJj6d70F/sr5m56TFu
         qYjOGk7nyFo0mYiS003DYJ8p4L/HHzpcenC3CW6TM29LJUKfTmCntSeFiSLIixkYQFwz
         N3oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678095909;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GKoFWJJzSudk3nwRzBdKY9XPLk69RDQhGQ1+c6jaE2w=;
        b=JNjmHRg31bQA4Z7ceE2IUR+U+dhscNPuOO0tQyY5CzjQqsGMkTcYYZ3xZxCDaylQy5
         XBS5iTd8gLqK0UR2IxHWCM1oWxGMaUOGXDHbUOdYyp0lOv3tOCx23ux6nnQlBmcVmXv5
         ffqJ2J+x2Hp3yfBsR+xNh9KQvbqusCJEt4ObyWGNdP14PVgiqk7j8BDAzXZc3RxZF1IR
         QYZ/05m8EupzWQ5V5VH/x9+T2+F9u3OvW4q8tzPRIsRsCaSxyWc9mBiigg+Z9d7BC+fO
         rWRCIiT8Zux8YkW1oM0cKsix1Atgn54pymX1aG4dGGj635uhOTin/T5ZkbWCbmVMYj18
         XVrw==
X-Gm-Message-State: AO0yUKWUgPnMmlrv+H/7m7tnP4hcLrbrLqLPFmnpTMdz4MzZC3GpC61D
        KW6ustFep6ouMZmsJU1yYyp6hi+leXFwdG0hVxQJLw==
X-Google-Smtp-Source: AK7set/bEVRc8TI95CoemZJh7+KtzC91SN3MLNASgDT+0oDrOOyzFT9nuOIx89wi/0U6lCt3IQk5Z4optHbj/h0U3h8=
X-Received: by 2002:a1f:2dcb:0:b0:401:42e5:6d2e with SMTP id
 t194-20020a1f2dcb000000b0040142e56d2emr6168043vkt.1.1678095909486; Mon, 06
 Mar 2023 01:45:09 -0800 (PST)
MIME-Version: 1.0
References: <20230302081711.27334-1-zhuyinbo@loongson.cn>
In-Reply-To: <20230302081711.27334-1-zhuyinbo@loongson.cn>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Mon, 6 Mar 2023 10:44:58 +0100
Message-ID: <CAMRc=Mfn8p_zVTruzJ4=5bWSmocg7y-Dvz85ogxawxixp_jbow@mail.gmail.com>
Subject: Re: [PATCH v12 1/2] dt-bindings: gpio: add loongson gpio
To:     Yinbo Zhu <zhuyinbo@loongson.cn>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        open list <linux-kernel@vger.kernel.org>,
        Jianmin Lv <lvjianmin@loongson.cn>,
        Liu Peibao <liupeibao@loongson.cn>, wanghongliang@loongson.cn,
        loongson-kernel@lists.loongnix.cn,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 2, 2023 at 9:17=E2=80=AFAM Yinbo Zhu <zhuyinbo@loongson.cn> wro=
te:
>
> Add the Loongson platform gpio binding with DT schema format using
> json-schema.
>
> Signed-off-by: Yinbo Zhu <zhuyinbo@loongson.cn>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Applied, thanks!

Bart
