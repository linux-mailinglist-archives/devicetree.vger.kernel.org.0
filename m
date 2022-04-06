Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCCEB4F6986
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 21:03:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229927AbiDFTFS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 15:05:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231626AbiDFTDN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 15:03:13 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23A51221BAE
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 10:15:34 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-de3ca1efbaso3611230fac.9
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 10:15:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=29TsaCwNe7IIgWiQ9KKg2gI7kYNmr8IJXlOP+DPhD5A=;
        b=Ag+gCiB80VQYXul7HsewEq+ECrGTgc1pb0H8aBeK6eR5FaP1H00NrmfIGmjU2v9yF1
         eHjk0V0InkOZQTeumwr6+yDpW+xXub2ApmWWXucQGqaxE18fl2crUqIEUjfZ9YjG7ItT
         wTj6CQFwDw3g+oJTWbtgu/StGEuUBiimHT+bQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=29TsaCwNe7IIgWiQ9KKg2gI7kYNmr8IJXlOP+DPhD5A=;
        b=TNRDFFde3rpBU41s2JsryDFGCf/jlTdit/G2pi7PfA2sF1gJZy29FxWqsAe+M+iuen
         hPKTc5FXCr+LdLKbQm+wUp755fQq3XdxkRJhthFWSqOFRCC9ZoCmO+d3CoXbvCHeJYfl
         oipjfxowJrcaFL5U1aUlc4/owpWsl9XICMEnAxEUnnxeO42zPcAqaN0Oa45svUPEaaH3
         CpIaE6vx8bM99x9yn+QUhYXOZRvEU0crzJIWGaI+mJAr+6P2dJydtSlXBmPC06kxihv7
         zHf1JM3ExUNpmQ71KmPTcijZaV9tMnmeQZGRDStZ4BnxtJH5mlpRIlWeqmVotHTAceZq
         V+IQ==
X-Gm-Message-State: AOAM5320rERpo0xujVcbfRha9Hyd55J4xsGIqG1JbP47aID134uCaEq+
        JTjS30H/grNBpr0X/DmenfnM9rU+ppcdwSWj3TDXYgwgBDk=
X-Google-Smtp-Source: ABdhPJyQ8fXZTYgdOL/eSrLX3m8IvNlVIi6AAL6YDk4DgLYT4B35Hck6Z1Cubsn/uO2obpuSUQwHXu8BXNhNk0c0+Lg=
X-Received: by 2002:a05:6870:e314:b0:e1:e5f0:d777 with SMTP id
 z20-20020a056870e31400b000e1e5f0d777mr4241005oad.193.1649265332055; Wed, 06
 Apr 2022 10:15:32 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 6 Apr 2022 10:15:31 -0700
MIME-Version: 1.0
In-Reply-To: <20220406165011.10202-8-gwendal@chromium.org>
References: <20220406165011.10202-1-gwendal@chromium.org> <20220406165011.10202-8-gwendal@chromium.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 6 Apr 2022 10:15:31 -0700
Message-ID: <CAE-0n53qRwMPLs9kHfN2xHSE0iC4OwVVfPd9vv7eua78yGdvwQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/8] dt-bindings: iio: sx9360: Add precharge resistor setting
To:     Gwendal Grignou <gwendal@chromium.org>, jic23@kernel.org,
        robh+dt@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Gwendal Grignou (2022-04-06 09:50:10)
> Allow configure the resistance used during precharge.
>
> Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
