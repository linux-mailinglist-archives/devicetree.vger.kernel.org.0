Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 927BD1E4389
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2020 15:25:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387998AbgE0NZQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 May 2020 09:25:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387479AbgE0NZQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 May 2020 09:25:16 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 179F4C08C5C1
        for <devicetree@vger.kernel.org>; Wed, 27 May 2020 06:25:16 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id v17so19179827ote.0
        for <devicetree@vger.kernel.org>; Wed, 27 May 2020 06:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=IyON4dIjRW5DaM48AnG5i4LRT+7XIFat0qbS0kz6vgameM8xvGCNLId7AZFsWHE12J
         WijmMMgccvkUlZ1gujpSEKrI92FY+pbOml1U62krQU1JYjzUHogW29LinL5mjrFD4YnO
         UU8tWsZZKqx/e0kQuoG0e2pLHdlKzARydZJad1OrYTGMzfGat7WAnPxHlczsOyN2dqmi
         5Boz83yrLz1ASPs3ahCK0XvwdABd9Prflvbd7M9L9gYxFqzUn2AUwvPqdfdqgI8Wbgk+
         /Z6jTmuuOdIY1vSGc2VbeiGXr3MtLuwNMF4wwEKgDLW3Se6r/vd0XeFH+zzpt14IBVp2
         hv6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=cqmbInB5Tl1O3TfLUetpgP6zyGKqV/QpQbciTr/MFXef0ZMwYBo24WFgHCooWa7sL6
         s1+WCs9/827pcCDKwkcshMyDnAtwn2vLPwiE1Wdpn2+StzmhaupiLWqW+iTp9rusi7oM
         mh35W3ToBIh3DP/cgjS/14RNxMZWGFZ2NCrKrxrNRku/1mlvHapIY0tl0BdyXrgBnAsH
         GI/3fveZq9GL4tVIRVn2cCMUpeKVgg4SLn4FhzRkKYt/aKJv4J2e1T+IhxTPTUddYZng
         Xaz9LjXTl5MAQwWOXp2K9OrTowp+UHsbf7KxNIp1PLULJFEll5hexVzOd4JYWjIv8N20
         mviQ==
X-Gm-Message-State: AOAM532UHR7TitaBQKY/IdHv7/+WQtUdF5hrG87QBh5z+OYWSOPGOsvB
        0CW9g0HaJSFR6WsXHLMqWM8fcUMRVU43lA8ishQ=
X-Google-Smtp-Source: ABdhPJz1Da5uE/Ij1qKXJPuOnWO8PHhNInsJyaTWRgjb8FdJFvvQUVhXbFcmnbSpxC22tLv+7I442TCEQDlTBreoZ4k=
X-Received: by 2002:a05:6830:2096:: with SMTP id y22mr4878581otq.339.1590585915342;
 Wed, 27 May 2020 06:25:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:9482:0:0:0:0:0 with HTTP; Wed, 27 May 2020 06:25:14
 -0700 (PDT)
Reply-To: robertandersonhappy1@gmail.com
From:   uche kalu <uchekalu0211@gmail.com>
Date:   Wed, 27 May 2020 06:25:14 -0700
Message-ID: <CADXpZ39u3X4D06XVRj836fa9vkB+SHYP4ZEUrCj-AbbxFH0GZw@mail.gmail.com>
Subject: =?UTF-8?B?0JTQvtGA0L7Qs9C+0Lkg0LTRgNGD0LMsINCc0LXQvdGPINC30L7QstGD0YIg0JHQsNGA?=
        =?UTF-8?B?0YDQvtCx0LXRgNGCINCQ0L3QtNC10YDRgdC+0L0uINCvINCw0LTQstC+0LrQsNGCINC4INGH0LDRgdGC?=
        =?UTF-8?B?0L3Ri9C5INC80LXQvdC10LTQttC10YAg0L/QviDRgNCw0LHQvtGC0LUg0YEg0LrQu9C40LXQvdGC0LA=?=
        =?UTF-8?B?0LzQuCDQv9C+0LrQvtC50L3QvtC80YMg0LrQu9C40LXQvdGC0YMuINCSIDIwMTUg0LPQvtC00YMg0Lw=?=
        =?UTF-8?B?0L7QuSDQutC70LjQtdC90YIg0L/QviDQuNC80LXQvdC4INCc0LjRgdGC0LXRgCDQmtCw0YDQu9C+0YEs?=
        =?UTF-8?B?INGB0LrQvtC90YfQsNC70YHRjywg0L/RgNC40YfQuNC90LAsINC/0L4g0LrQvtGC0L7RgNC+0Lkg0Y8g?=
        =?UTF-8?B?0YHQstGP0LfQsNC70YHRjyDRgSDQstCw0LzQuCwg0L/QvtGC0L7QvNGDINGH0YLQviDQstGLINC90L4=?=
        =?UTF-8?B?0YHQuNGC0LUg0YLRgyDQttC1INGE0LDQvNC40LvQuNGOINGBINGD0LzQtdGA0YjQuNC8LCDQsdC10L0=?=
        =?UTF-8?B?0LXRhNC40YbQuNCw0YDQsCDQuCDQsdC70LjQttCw0LnRiNC40YUg0YDQvtC00YHRgtCy0LXQvdC90Lg=?=
        =?UTF-8?B?0LrQvtCyINCyINC80L7QuCDRgdGA0LXQtNGB0YLQstCwINC/0L7QutC+0LnQvdC+0LPQviDQutC70Lg=?=
        =?UTF-8?B?0LXQvdGC0LAsINGC0L4g0LLRiyDQsdGD0LTQtdGC0LUg0YHRgtC+0Y/RgtGMINC60LDQuiDQtdCz0L4g?=
        =?UTF-8?B?0LHQu9C40LbQsNC50YjQuNC1INGA0L7QtNGB0YLQstC10L3QvdC40LrQuCDQuCDRgtGA0LXQsdC+0LI=?=
        =?UTF-8?B?0LDRgtGMINGB0YDQtdC00YHRgtCy0LAuINC+0YHRgtCw0LLQuNCyINC00LXQvdGM0LPQuCDQvdCw0YE=?=
        =?UTF-8?B?0LvQtdC00YHRgtCy0L4g0YHQtdC80Lgg0LzQuNC70LvQuNC+0L3QvtCyINC/0Y/RgtC40YHQvtGCINGC?=
        =?UTF-8?B?0YvRgdGP0Ycg0LTQvtC70LvQsNGA0L7QsiDQodCo0JAg0JTQvtC70LvQsNGA0YsgKDcsNTAwLDAwMCww?=
        =?UTF-8?B?MCDQtNC+0LvQu9Cw0YDQvtCyINCh0KjQkCkuINCc0L7QuSDQv9C+0LrQvtC50L3Ri9C5INC60LvQuNC1?=
        =?UTF-8?B?0L3RgiDQuCDQt9Cw0LrQsNC00YvRh9C90YvQuSDQtNGA0YPQsyDQstGL0YDQvtGB0LvQuCDQsg==?=
To:     undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


