Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A55A25AD2A4
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 14:39:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236831AbiIEMeD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 08:34:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238198AbiIEMce (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 08:32:34 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6D006112C
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 05:26:56 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id m2so8408048pls.4
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 05:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=etq8IkC2viLzRI1H//UPLJsazHXj+WP70gCKVVsBxG0=;
        b=odXQvI5yJ+fo8Iol+JS4mWtFxJRXFyT4mLP1SW/iQ+vrl/7XE0X7z0waG1o0YWa1Tn
         SKXare6rsoDtFsfBJaz+8zdmT9IEg0Kp99rBtjyLeud4WLcvmsulqiMe+SGsrdR+3gzi
         htbPyMJJjd08n2xHT+CESyEezVa/+MbljI6V7WjiU+QHDRhHT8nTLH3MlnGUc5s1s1JU
         aiAmOimHe8XrIvppXP4tKOlqVMmb/ScDyikccsTUJDQ/D3dyocQsH6JQDU1fgopgX+Hn
         UfRwdqxsron9T5KQAC+DmePRTehs8fk/JngXELk7oyTMhwdz+qBN4wRPssaNxhIZPS+8
         6BMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=etq8IkC2viLzRI1H//UPLJsazHXj+WP70gCKVVsBxG0=;
        b=tKcqRozwjOj77XP+EDO2rP649sXKQlEdeMhwouuVRhwgOD32QOFTd2O9LVngiR0LLf
         DNOY/AMwscH6u+vqRER5htuee4epjoU0H/HUgNE0B0ISpU0BKRf9JTs/b9wIswPlG2X3
         jl8E5PWJtJ2V1R92LgXWUjoTuy36CoKZ1y50tsC4h9VwoM66R1Wo7/r7CRsd2QX9s+9M
         jRrm/41Lg9jrPPvckg1qCiq70wg/fyauF89Aw4S2ZfBKMs9iFXKE/FXrEoXJgjzs/pTh
         mXIMzIWlTgeDCzLy31pOdUYrEOHuzMWbg4H640Bxzn3G9gy2lQ1qj2GAZMJUrh2y4Zpc
         2NDg==
X-Gm-Message-State: ACgBeo1lGCfxLZPHizNJk54CvhuP/OSLv5qna7jeti630LNBYtvJpPVH
        pdCtWgqyqjwxnQbxXy9t/5VoyVDyONf/U69yb9106iZUGTA=
X-Google-Smtp-Source: AA6agR6NWl4Pf11GlejTgb/+flhGr590MSm1xWQ8qf3n8KoxGDOVEoBBdtZ0O1XFYhTkMuFRnKM3NTI0AiYKDgjb6oE=
X-Received: by 2002:a17:902:eb82:b0:176:c0e0:55c1 with SMTP id
 q2-20020a170902eb8200b00176c0e055c1mr1212187plg.168.1662380815079; Mon, 05
 Sep 2022 05:26:55 -0700 (PDT)
MIME-Version: 1.0
References: <20220905072553.196974-1-alexander.stein@ew.tq-group.com>
In-Reply-To: <20220905072553.196974-1-alexander.stein@ew.tq-group.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Mon, 5 Sep 2022 09:26:42 -0300
Message-ID: <CAOMZO5DeSnEDqmy1V5FJoEKZ07i157-1e0WErqJgYT3JiKrfUg@mail.gmail.com>
Subject: Re: [PATCH 1/1] arm64: dts: imx8mp: add missing pinctrl for RTC alarm
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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

Hi Alexander,

On Mon, Sep 5, 2022 at 4:26 AM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Although the RTC is on the module, the RTC_EVENT# signal is connected
> on the mainboard. Already set by bootloader, but make explicit in Linux
> as well.
>
> Fixes: 418d1d840e42 ("arm64: dts: freescale: add initial device tree for TQMa8MPQL with i.MX8MP")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

The change looks good, but the Subject should be improved to contain
the board name:

arm64: dts: imx8mp-tqma8mpql-mba8mpxl: add missing pinctrl for RTC alarm

Reviewed-by: Fabio Estevam <festevam@gmail.com>
