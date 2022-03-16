Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBFA34DBA3F
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 22:39:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356305AbiCPVkU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 17:40:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358163AbiCPVkP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 17:40:15 -0400
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF1F638199
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 14:38:59 -0700 (PDT)
Received: by mail-io1-xd35.google.com with SMTP id q11so3940045iod.6
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 14:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0ni6qEV23bpfC9gZ85rViHqPr1Fe02W50huWIxyNEUM=;
        b=YDoHhjkzfqfaghn9OIA7SaV0d87Xf0IXGRdp5t0bNzOvxtgPauU4faPlIhH0d+HjBY
         qjATOau7I2cTNJjphGROqb3gQ4m4ZF2vXvPZRRoAKX1Ufzs9lt80l571VZE34FI8o1WF
         /dl4B6dB5zSAGy60rVz9BmVZ+JqUZHX+QmzNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0ni6qEV23bpfC9gZ85rViHqPr1Fe02W50huWIxyNEUM=;
        b=ehx2Q1HyPPThFCIcqP+H28NYMCJM46Z/tSpzb9wk6ZOmsk7r682FS2zcHuWNsNkagN
         XWTu7UgnbflEmnza8uYUMUrTHHUoeWliUwVquZzz+NkTi4EqtTC5fRljPO20jWu19yDY
         3xJOFgwuQVtKcqAjd+G959x1m79d1JlzmOkZxeLgOBAMU376wMazzvZmxZGDwi+hQmIM
         Y2XBKfDwZdm3GmQf4AEaCRg2JGjNH7D44eGjdirZrRh6Kv2SooXD29Sbg3nDY7EmN5De
         lcG8RecZoNsq7O96MDpxlZaBfAG/D90Z1+cw+5dO7HTBF4VjmFTduYDVUMQXCbIQ9ZET
         e4tA==
X-Gm-Message-State: AOAM531sDtPBlrfsQzfzR2Avwm+bsCG2OgmwuzruhedjjNHCVjMln6P1
        8v4EYlw31nH/VHqxErHuSkmrwde2r/Zr1nxaVg6olw==
X-Google-Smtp-Source: ABdhPJyDNC+rz9Gv3wfYl4tEz5JX5mPK5as58m8jtyXLL2S5aD32zTRUm4SgHmvgoX+uYCux/ML3AEi6m7CLCXhVYGQ=
X-Received: by 2002:a6b:6f0c:0:b0:648:ea2d:41fe with SMTP id
 k12-20020a6b6f0c000000b00648ea2d41femr847996ioc.63.1647466739121; Wed, 16 Mar
 2022 14:38:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220315173042.1325858-1-gwendal@chromium.org>
 <20220315173042.1325858-2-gwendal@chromium.org> <CAE-0n51+Vyco+drQzF79bE06_UTKHHc3J5Q1wMvxEntqEBpyug@mail.gmail.com>
In-Reply-To: <CAE-0n51+Vyco+drQzF79bE06_UTKHHc3J5Q1wMvxEntqEBpyug@mail.gmail.com>
From:   Gwendal Grignou <gwendal@chromium.org>
Date:   Wed, 16 Mar 2022 14:38:48 -0700
Message-ID: <CAPUE2uuRG-aQ1_bHxJts+5bsGeZDrFXqCOfoFXPTdCyfv7CwKA@mail.gmail.com>
Subject: Re: [PATCH 1/7] iio: sx9324: Fix register field spelling
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     jic23@kernel.org, robh+dt@kernel.org, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 15, 2022 at 11:19 AM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Gwendal Grignou (2022-03-15 10:30:36)
> > Field for PROX_CTRL4 should contain PROX_CTRL4.
> >
> > Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
>
> Any Fixes tag? It's a typo though so not really a big deal.
Fixes: 4c18a890dff8d ("iio:proximity:sx9324: Add SX9324 support")
>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
