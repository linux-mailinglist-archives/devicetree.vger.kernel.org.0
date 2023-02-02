Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4931B68899E
	for <lists+devicetree@lfdr.de>; Thu,  2 Feb 2023 23:20:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231712AbjBBWUg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Feb 2023 17:20:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229554AbjBBWUf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Feb 2023 17:20:35 -0500
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC1ED5084A
        for <devicetree@vger.kernel.org>; Thu,  2 Feb 2023 14:20:34 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id u72so4134541ybi.7
        for <devicetree@vger.kernel.org>; Thu, 02 Feb 2023 14:20:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fGcZobRTdH/JxXnU9+WBJ4Rh+WSSCFdcKJ2+1POHNc8=;
        b=qj18/+psCD8U249ZAMhJdxVzTrH9/NzO0ysNy7vc4Z5Gz8NyY7dofSKriHP/IYTedj
         v4xgASQ9lHE5zMbriwpfxz2+/caVXXxnoPj+xNeGVLTkNCzjOK95aOt0zdqdUIn27Kzp
         GHkYLsggyKsWSpc8gQ34mo10ooRzMLHHtGn382SGD4SvEDzY1/FRa86CbCI5JlpnHL37
         sxJJtP91lYSRR9npj20Q4g23YeYG22G7RVuYs+x6whRgNyDwaJDENkYUdMzppL4PBqR9
         2KhbNA1NvOtLHR9FuawBtmbFOM6fpphf63/OP1kk47ztnz8PjFtPaYvb/HWqhkuGuwXe
         cuyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fGcZobRTdH/JxXnU9+WBJ4Rh+WSSCFdcKJ2+1POHNc8=;
        b=dI0RcRuC0fgoQFEieaSXxyzgF3bxYnfHFExgnsWTISB5xZdzRFWRr4QEiStBahKsQE
         nqY4wLrn1A4Ee4ooN5hdZOE/VLPuErPCXPWZ4d0WSlLcD5punuoXlHcLioA8vqtQk4hO
         kGKlKakCpYMj8d+V6EJpIMYdGwjC2Q8E2NA7AuFaD/0lGJpM7FaoN4Mxi0eHrvqRdLg+
         pLjs8BGk3luxTXtURfRKbcj2JebcyHM2evjcHlKL+r8Tokg26CMSdwv+hQfobifIVogw
         9RsEGgqa2c8LYwAYKSMAUb6FraOFMERrTN0k5/Itrx2pHZwr1QCHZEsxUM2M096dwm1N
         oZ9Q==
X-Gm-Message-State: AO0yUKXoCALtmGNwbDZpbsfivaoa35o9ew4akErV6WduCsmimVG//wbZ
        wtujcey4wviBwd5Aao5inRLzSqiLZ8JfP6mElJMImg==
X-Google-Smtp-Source: AK7set8e1FAip5uCDI4KXqLOBcMrFExpDUcB0oVoLeXIQG/31VIhhFAXhZPv/eW2iatFYpSbsSsL6OZP8uElMyxzkmg=
X-Received: by 2002:a25:5bd6:0:b0:80b:66c5:9fc5 with SMTP id
 p205-20020a255bd6000000b0080b66c59fc5mr980309ybb.210.1675376434121; Thu, 02
 Feb 2023 14:20:34 -0800 (PST)
MIME-Version: 1.0
References: <20230202143305.21789-1-m.zatovic1@gmail.com>
In-Reply-To: <20230202143305.21789-1-m.zatovic1@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 2 Feb 2023 23:20:23 +0100
Message-ID: <CACRpkdYSG6zuqyd9W0f4HgwzD2S9dLXv+9Scg0NYWvoPdf8LHA@mail.gmail.com>
Subject: Re: [PATCHv2 0/4] Wiegand bus driver and GPIO bit-banged controller
To:     =?UTF-8?B?TWFydGluIFphxaVvdmnEjQ==?= <m.zatovic1@gmail.com>
Cc:     linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
        martin.petersen@oracle.com, beanhuo@micron.com, arnd@arndb.de,
        avri.altman@wdc.com, iwona.winiarska@intel.com,
        fmdefrancesco@gmail.com, dipenp@nvidia.com, ogabbay@kernel.org,
        bvanassche@acm.org, mathieu.poirier@linaro.org,
        yangyicong@hisilicon.com, dan.j.williams@intel.com,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Martin,

the whole patch set looks very sensible to me, I see there is still some
DT binding things to fix (it is a somewhat moving target, so expected)
but the whole design looks very sound to me, so from a GPIO point
of view (which is a minor thing though):
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
