Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 157955A1DA6
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 02:16:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbiHZAPz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 20:15:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240523AbiHZAPk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 20:15:40 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1045127B0F
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 17:15:38 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id p9-20020a17090a2d8900b001fb86ec43aaso29231pjd.0
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 17:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:to:from:cc:in-reply-to:subject:date:from:to:cc;
        bh=A0gsvt1poQ+VylNfnig8Ot0cE//z5t+eeDWuqhE1fpQ=;
        b=excq8S0Pt6bKvgJnrWBZCNZ9Yh3t/50NeXMnSOTwuOBCtZsNIQdwl9ASMdPHIGNAaQ
         sOB/cpwuDO94Cyskva/FtB2eKHqYi4Po0TWlmF086nL4G6Fu35SwQTGmhJRMbeOzIW6h
         iT3icaST3kuPPU/vPzer0orCVtMNa0UtMmzL4lazp1JxEislW3UyGHcaQ6zIivhU7zTF
         Bg78IHc1JyerrGDMS07VytlhlOmtIdXJDTqcgQ6lhUJfiZpHZWwwSeaMCxDnoWMeO2Ek
         c6alIJXM6k5bHjt49FkTTO1dWD1YXpEVz8xCewz/Ox9A9T9LU4hrymagamHTUM0dTvjl
         PiIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:to:from:cc:in-reply-to:subject:date:x-gm-message-state
         :from:to:cc;
        bh=A0gsvt1poQ+VylNfnig8Ot0cE//z5t+eeDWuqhE1fpQ=;
        b=47NfMtzBf4c+Ov6d488RJlVuPgRsMWJf0zYsiKIgDUnWNxuKIAu8SsL2goGPUPz33e
         5vx64Skt0DT445VqkzmcEcsmHXEwt2Ac8qSPWyvTFl4JroDwP4z+zlwHIck69q9uiKOf
         k6zoU+XmcTDrZzrU5BmEoVDQZiRTH+Cp04LbMK0Xh8R/0KxapgTTq5VDWJui3QQMofTJ
         K3miZ0R/3dysf6jCCeAuprh+dlmvzz5HYa1l8mZbRJLeu/bbbHdMsaEGhCAoMJWKDZx4
         ZHFe3PblSawlGqwmncf0blM6osTp0uz33eKGR18DNg6QaRt6Dro6PS8SdmZ0CRwP96SY
         vjkg==
X-Gm-Message-State: ACgBeo3XPA568FMTePVK1Eq4od+n8AZbSQZ/4kg9yKBQZ3Ny2znUn19X
        ur80KXUhT2+u3ZGAQg1nLPZR+g==
X-Google-Smtp-Source: AA6agR7avLLMBjCkQ+XBTGDBoNHD8IObfC9EMTEilFGiA40oEt07P4n5+N3r+nAhZXHYuS+LR+T0+A==
X-Received: by 2002:a17:90a:c02:b0:1fb:b69d:140f with SMTP id 2-20020a17090a0c0200b001fbb69d140fmr1520190pjs.139.1661472937514;
        Thu, 25 Aug 2022 17:15:37 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id e3-20020a17090301c300b00172cb8b97a8sm170479plh.5.2022.08.25.17.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 17:15:37 -0700 (PDT)
Date:   Thu, 25 Aug 2022 17:15:37 -0700 (PDT)
X-Google-Original-Date: Thu, 25 Aug 2022 16:49:08 PDT (-0700)
Subject:     Re: [RESEND/PULL PATCH 0/2] MAINTAINERS updates for PolarFire SoC
In-Reply-To: <20220810140243.2685416-1-conor.dooley@microchip.com>
CC:     soc@kernel.org, daire.mcnamara@microchip.com, broonie@kernel.org,
        wsa@kernel.org, thierry.reding@gmail.com,
        u.kleine-koenig@pengutronix.de, jassisinghbrar@gmail.com,
        linus.walleij@linaro.org, brgl@bgdev.pl,
        Greg KH <gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        mturquette@baylibre.com, sboyd@kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        conor.dooley@microchip.com
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     conor.dooley@microchip.com
Message-ID: <mhng-9fab66cf-3d6c-417b-9233-8030c256aea9@palmer-mbp2014>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 10 Aug 2022 07:02:42 PDT (-0700), conor.dooley@microchip.com wrote:
> Hey Arnd,
>
> Could you please take the following two patches via the soc tree when
> you get a chance?
>
> The first is adding coverage for "my" dt-bindings as suggested by Mark.
> I CCed all the subsystem maintainers on a V1 a week ago & I've added
> them explicity to the patch text this time as CCs. Correct me if I am
> wrong, but I am operating on the assumption that their Acks are not
> required here. Hopefully increasing the binding coverage is non
> controversial!
>
> The second patch is a resend of a patch that was deferred to later in
> the merge window avoid messing about with a 4th conflict in the entry.
>
> Thanks,
> Conor.
>
> Conor Dooley (2):
>   MAINTAINERS: add PolarFire SoC dt bindings
>   MAINTAINERS: add the Polarfire SoC's i2c driver
>
>  MAINTAINERS | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
>
> base-commit: 4e23eeebb2e57f5a28b36221aa776b5a1122dde5

Thanks, these are on fixes.
