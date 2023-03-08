Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5997A6B072D
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 13:35:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229651AbjCHMfD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 07:35:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229893AbjCHMfC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 07:35:02 -0500
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C73AABCB8F
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 04:34:56 -0800 (PST)
Received: by mail-pl1-x632.google.com with SMTP id a2so17507996plm.4
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 04:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678278896;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zHuDgvlCE/5a9+1aGAitgplyFrJpaa48jFZWHTER884=;
        b=EUJUIzwhx5ZOLfjs56PfPm2MZ1SOYq6t773REs/PoM+logtX5oJWDeHGaZnjhe+wdG
         MHSIt4rtxU1/cewTmBbp7rfrnqppxomQ//s1kbFF95U2YOwzlGuOWXf/LSiwTMgLOErF
         vN6ZnO8fy8KDtvNk/qy/VeK1OtOF+C7DuGRQ/VgQt9CaiH/TOgNXxGAoPGiJWjaxJc8S
         sCAFj9MDjPwQ5lawNC8havEbww7hOXxedm3eN/h1x/w5yL7TOq4iC47MRGj5lDwHfoDb
         c0+xJs/fT3pI9FWPJRfptHTr5JkktBAMzDveQQcfowiSRA9raxJIFVJj8Ix1NU+CLJIm
         YmDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678278896;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zHuDgvlCE/5a9+1aGAitgplyFrJpaa48jFZWHTER884=;
        b=VDL3x8QKEAUnLOs3mdN4ifInOxqbM7+KNJ8XGms9o+kGwOqbhOBJ65jRdSxbi0CuBF
         wZg8Wjyn18OblFk/Rbwy8zhOFq2JhGS0iNhptVaGHeWopF0HcDJIiyxusioPxqzxt/Ie
         X9MPst9M6WLQTHn8RK8gHvJZqw9ebHv0EJUBKaP9nKhig4tTlJkijwjFZnXRjp1NF668
         JBRoC6zxjznd9SwXLLX3U3n7m8nFbRsHh4xcfPDztKaKUoX2TXjTnt7nu8SZAYQuLBH3
         mR+oc52FSUoYkzb7PFyVkWWLbPzUtcrp0GhLDhX2GBU28uGBqUJ6ICKalE6vW0UuPEy1
         3VZQ==
X-Gm-Message-State: AO0yUKVQZ1l3k5l2vi8NYtq3pwX/JuG/PmxTcQNR0FeO5F9V9nxGsxSp
        +LOB8rpQB8cnzw51TPby5OaB8889adM8PGvFqK8=
X-Google-Smtp-Source: AK7set9j3MYpH/pDS1Tu/sjnEelIBRJc/QZ5emFBX/PM6Z8GgezMhpXsCfH+ZFUsM13ztNzndYGAcfu8+fNi/oxvSms=
X-Received: by 2002:a17:90a:69c4:b0:233:bc72:1c69 with SMTP id
 s62-20020a17090a69c400b00233bc721c69mr6277736pjj.9.1678278896224; Wed, 08 Mar
 2023 04:34:56 -0800 (PST)
MIME-Version: 1.0
References: <20230227093846.151474-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20230227093846.151474-1-alexander.stein@ew.tq-group.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Wed, 8 Mar 2023 09:34:44 -0300
Message-ID: <CAOMZO5Ao8-AW_LXdVbrxcHO1Yn9YP8UPyNy7U3ecy+G+9ZD7Eg@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: imx93: add missing tpm pwm instances
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Alexander,

On Mon, Feb 27, 2023 at 6:38=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> TPM1/TPM3 are missing, add them.
>
> Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Who is the original author? If it is Markus, then his name should
appear in the From: line.

Apart from that:

Reviewed-by: Fabio Estevam <festevam@gmail.com>
