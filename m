Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53F4642FAD0
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 20:19:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237565AbhJOSVM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 14:21:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234950AbhJOSVK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Oct 2021 14:21:10 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66C1EC061570
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 11:19:03 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id y3so28041233wrl.1
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 11:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=oz0PdbLM/Mhn9Yz5mpLZ8r74HBCDimaVzfmbhYnq9EQ=;
        b=EI88WOmJ358zdzHdszhQjdIFEpxqCvFZj6FoCc+S/WjC8/4lQwHagDLr8IMxOzOeN/
         DLFjWEAH1mdfH6qSJZRtOLJ1CabiXkDhnMuhwTpkC+o0n6RVfHKF69D42E+H31Z9sn1m
         5K4/WjoGw3+XIfuaLEhHuZC/weziGwJFh5lXhumwym2x73iD+zpM3rHbOgCr3Cstd9Br
         U+EhErWUFmxFgSmEPkkHygH7UIaxKJSpoOoKUrVDqhDDTeEfLgiLQ/Tm9pRi7JKup0cM
         O0mKnPML5HJiHoDP110F0yvSIeVTlMIiwG8BKbwUB3dvlKk7COGZHIBObjEh9/SRrAbt
         wxjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=oz0PdbLM/Mhn9Yz5mpLZ8r74HBCDimaVzfmbhYnq9EQ=;
        b=S7odpQQ2pwXV+hFk4qImMIAYK4TI0wSsUK/D2MVPqNmK8eV7oPufLuTb3ljsuRzaqv
         X+fSLrYcnKRx+G/B014/0j5VNNluvhlkY7Km7fjwOsHMhWl91y14tPUI4Jw/TCz4Oi+i
         huw+cG9jCqN6GO9ZPyyV6AZJI6HUEwPoZo64adtu49u1x2J3uQlS3mSM9Wi4bp90dFqC
         QIRGZqf5GQsboOZyIYQw2PALGRrLcDGqwOnfww6BSMJCVs4htY10lPL/YrVvwflryCiH
         W7Uudo/0CZ5tFhGYLb9iw4Youo2BavyJql36JGUMu/wmL42pEunGz8hVe2Uw+IkT3Zgb
         2QbQ==
X-Gm-Message-State: AOAM531cZOrkaGQLVBt7PS6xjYw49sRi9kpgWnk4o+qk3vrjim8Eclhg
        /QOdwBMHkS/SKvjuYct8LXFg8JWlXlztH1I8TD8=
X-Google-Smtp-Source: ABdhPJwyuklRYo60rv+THlAQsMiauE9Pq0v2yeT0xSo3xPXw605gW05MfGHzgfyktFS83qdUusOf6v0Slf9XQb+WKqc=
X-Received: by 2002:adf:a549:: with SMTP id j9mr16213702wrb.123.1634321941907;
 Fri, 15 Oct 2021 11:19:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:4385:0:0:0:0:0 with HTTP; Fri, 15 Oct 2021 11:19:01
 -0700 (PDT)
Reply-To: mrjoshuakunte@gmail.com
From:   Mr Joshua Kunte <kuntemrjoshua@gmail.com>
Date:   Fri, 15 Oct 2021 19:19:01 +0100
Message-ID: <CAFhr1xAy7xQA+9XRsyh7KGFUFpYSi9Gx6U8nDvit34xt99TV9g@mail.gmail.com>
Subject: =?UTF-8?B?zrPOtc65zrEgz4POsc+C?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

LS0gDQrOiM69zrEgzrzOrs69z4XOvM6xIM63zrvOtc66z4TPgc6/zr3Ouc66zr/PjSDPhM6xz4fP
hc60z4HOv868zrXOr86/z4Ugz4POsc+CIM+Dz4TOrM67zrjOt866zrUgz4TOt869IM+AzrXPgc6x
z4POvM6tzr3Otw0KzrXOss60zr/OvM6szrTOsSDOvM61IM+EzrfOvSDPgM+Bzr/Pg860zr/Ous6v
zrENCs6tz4fOv869z4TOsc+CIM6tzr3OsSByZXR1bmUgbWFpbCDOsc+Az4wgzrXPg86sz4IgzrHO
u867zqwgz4DPgc6/z4Igzq3Ous+AzrvOt86+zq4gzrzOv8+FIM60zrXOvSDOvM+Azq7Ous6xz4TO
tQ0Kz4DOv8+Ezq0gz4PPhM6/zr0gzrrPjM+Azr8gzr3OsSDOsc+AzrHOvc+Ezq7Pg861z4TOtS4N
Cs6gzrHPgc6xzrrOsc67z44gzrHPgM6xzr3PhM6uz4PPhM61IM6zzrnOsSDPgM61z4HOsc65z4TO
rc+Bz4kgzrXOvs63zrPOrs+DzrXOuc+CLg0KDQrOnM61IM61zrrPhM6vzrzOt8+DzrcsDQrOms+N
z4HOuc61IEpvc2h1YSBLdW50ZS4NCg==
