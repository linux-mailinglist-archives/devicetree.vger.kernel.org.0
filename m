Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DF075AD2B9
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 14:39:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237873AbiIEMez (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 08:34:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237849AbiIEMeG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 08:34:06 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49324564F8
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 05:27:58 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id t11-20020a17090a510b00b001fac77e9d1fso12043191pjh.5
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 05:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=gu9N0N2hmcMjozFXxsqS6NcoPuqCEHpJanctcCvuytA=;
        b=CyF+4znKxtuSSsBDfbXoVjtF4BdmojL/u27lnToCjGdyNbcQRYXDGgWOXVuDJHHxws
         7XwkrnxIE5rjTGhpFKV5BBuAwKGQITvbGvEvuOLhykomHcpF0NgkLuHmQJp8eO94L89c
         z6bqb687tl008pdSHYVf/G3Etgm18wxh7NvWDmQpy2GFTrK1awlOSPOH5KfVc+V1RB0i
         9CvyYHNC8gjj5CH4gZD1anPjnRBjSdk+tho1OK6mleCPcSYFmKxOXz4a+CFSlOebZdlb
         AmxBEigh90snv9SfTe7QsNr3OWDKidOsKgsMAYYL0UPZcrVq4yidKkdv6DpOR+IY8sr6
         mvcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=gu9N0N2hmcMjozFXxsqS6NcoPuqCEHpJanctcCvuytA=;
        b=rGRC0O934NBgjS/GZZy7dE0E2xoPwUJqsRyXc2RnwmfYqpyUPdNVQXKHc2z9xL0/PM
         DBWpZksPe5LS6gGkziqZhbM5nfF81FJgVGS634WM312OqXLbHYBgBUSeAe+y2cp8fndB
         9KqJZc218IaB7bOeXOkmzYcKNkIp51Kb+yVZlvfb/S5/RULiBnfXKo5M+6X9vDvA4Fof
         w8BdXd4RId/3SkBjaJ+rZpbeW9CXWGyUqc1wrucwIXGMuIcD+YBl+uEDvsbJQbAaicTR
         2s3sLT1l43Rc+zJTGFDE1ZvMxKdkunOB33hFJ7n1kA1V0FwJuj5z5kwHrXP/rJBFmZN0
         lfmA==
X-Gm-Message-State: ACgBeo0L9djkk0VOGZfK5lwObOhPtqn5IPGviFsEZyfrMdlSZQJ1mIWi
        f1sSWZFRUnCGTTKxK3bftCVX9xnvRt6s9Naqhsx1sXz0
X-Google-Smtp-Source: AA6agR56AGfJlIXuHf4/Kc12a/gu2ywh/+/xrLmbXmuzuMjIpegMePbLxxYQft3bMlQgpczOKI5lM7eiZHDSoht/LNw=
X-Received: by 2002:a17:902:f782:b0:173:1206:cee0 with SMTP id
 q2-20020a170902f78200b001731206cee0mr48646050pln.130.1662380877630; Mon, 05
 Sep 2022 05:27:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220905073730.199462-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20220905073730.199462-1-alexander.stein@ew.tq-group.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Mon, 5 Sep 2022 09:27:45 -0300
Message-ID: <CAOMZO5D57Zp0jWSw6gWLqApNfN61Oc3nwxqSLe1yQC5Y=HUeZQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] arm64: dts: tqma8mpql: add USB DR support
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Tim Harvey <tharvey@gateworks.com>, Jun Li <jun.li@nxp.com>
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

On Mon, Sep 5, 2022 at 4:37 AM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Add support for USB DR on USB1 interface. Host/Device detection is done
> using the usb-role-switch connector.
>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
